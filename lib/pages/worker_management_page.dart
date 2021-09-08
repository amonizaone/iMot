import 'dart:io';

import 'package:flutter/material.dart';
import 'package:imot/components/app_bar.dart';
import 'package:imot/components/drawer_manu.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:workmanager/workmanager.dart';
import 'package:path_provider/path_provider.dart';

class WorkerMagementPage extends StatefulWidget {
  WorkerMagementPage({Key? key}) : super(key: key);

  @override
  _WorkerMagementPageState createState() => _WorkerMagementPageState();
}

enum _Platform { android, ios }

class PlatformEnabledButton extends ElevatedButton {
  final _Platform platform;

  PlatformEnabledButton({
    required this.platform,
    required Widget child,
    VoidCallback? onPressed,
  }) : super(
            child: child,
            onPressed: (Platform.isAndroid && platform == _Platform.android ||
                    Platform.isIOS && platform == _Platform.ios)
                ? onPressed
                : null);
}

const simpleTaskKey = "simpleTask";
const simpleDelayedTask = "simpleDelayedTask";
const simplePeriodicTask = "simplePeriodicTask";
const simplePeriodic1HourTask = "simplePeriodic1HourTask";

void callbackDispatcher() {
  Workmanager().executeTask((task, inputData) async {
    switch (task) {
      case simpleTaskKey:
        print("$simpleTaskKey was executed. inputData = $inputData");
        final prefs = await SharedPreferences.getInstance();
        prefs.setBool("test", true);
        print("Bool from prefs: ${prefs.getBool("test")}");
        break;
      case simpleDelayedTask:
        print("$simpleDelayedTask was executed");
        break;
      case simplePeriodicTask:
        print("$simplePeriodicTask was executed");
        break;
      case simplePeriodic1HourTask:
        print("$simplePeriodic1HourTask was executed");
        break;
      case Workmanager.iOSBackgroundTask:
        print("The iOS background fetch was triggered");
        Directory tempDir = await getTemporaryDirectory();
        String? tempPath = tempDir.path;
        print(
            "You can access other plugins in the background, for example Directory.getTemporaryDirectory(): $tempPath");
        break;
    }

    return Future.value(true);
  });
}

class _WorkerMagementPageState extends State<WorkerMagementPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FlexibleAppBar(),
      drawer: DrawMenu(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text("Plugin initialization",
                style: Theme.of(context).textTheme.headline5),
            ElevatedButton(
                child: Text("Start the Flutter background service"),
                onPressed: () {
                  Workmanager().initialize(
                    callbackDispatcher,
                    isInDebugMode: true,
                  );
                }),
            SizedBox(height: 16),
            Text("One Off Tasks (Android only)",
                style: Theme.of(context).textTheme.headline5),
            //This task runs once.
            //Most likely this will trigger immediately
            PlatformEnabledButton(
                platform: _Platform.android,
                child: Text("Register OneOff Task"),
                onPressed: () {
                  Workmanager().registerOneOffTask(
                    "1",
                    simpleTaskKey,
                    inputData: <String, dynamic>{
                      'int': 1,
                      'bool': true,
                      'double': 1.0,
                      'string': 'string',
                      'array': [1, 2, 3],
                    },
                  );
                }),
            //This task runs once
            //This wait at least 10 seconds before running
            PlatformEnabledButton(
                platform: _Platform.android,
                child: Text("Register Delayed OneOff Task"),
                onPressed: () {
                  Workmanager().registerOneOffTask(
                    "2",
                    simpleDelayedTask,
                    initialDelay: Duration(seconds: 10),
                  );
                }),
            SizedBox(height: 8),
            Text("Periodic Tasks (Android only)",
                style: Theme.of(context).textTheme.headline5),
            //This task runs periodically
            //It will wait at least 10 seconds before its first launch
            //Since we have not provided a frequency it will be the default 15 minutes
            PlatformEnabledButton(
                platform: _Platform.android,
                child: Text("Register Periodic Task"),
                onPressed: () {
                  Workmanager().registerPeriodicTask(
                    "3",
                    simplePeriodicTask,
                    initialDelay: Duration(seconds: 10),
                  );
                }),
            PlatformEnabledButton(
                platform: _Platform.android,
                child: Text("Register Periodic 2 SEC"),
                onPressed: () {
                  Workmanager().registerPeriodicTask(
                    "999",
                    simplePeriodicTask,
                    initialDelay: Duration(seconds: 2),
                  );
                }),
            //This task runs periodically
            //It will run about every hour
            PlatformEnabledButton(
                platform: _Platform.android,
                child: Text("Register 1 hour Periodic Task"),
                onPressed: () {
                  Workmanager().registerPeriodicTask(
                    "5",
                    simplePeriodic1HourTask,
                    frequency: Duration(hours: 1),
                  );
                }),
            PlatformEnabledButton(
              platform: _Platform.android,
              child: Text("Cancel All"),
              onPressed: () async {
                await Workmanager().cancelAll();
                print('Cancel all tasks completed');
              },
            ),
          ],
        ),
      ),
    );
  }
}
