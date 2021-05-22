import 'package:flutter/material.dart';
import 'package:imot/pages/job_pending_page.dart';
import 'package:imot/pages/login_page.dart';
import 'package:imot/pages/my_job.dart';
import 'package:imot/utilities/routes.dart';
import 'package:provider/provider.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    // MultiProvider(
    //   providers: [
    //     // ChangeNotifierProvider(create: (_) => Counter()),
    //      Provider.value(value: StreamBackStackSupport()),
    //   ],
    //   child:   MyApp(),
    // ),
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TEST APP',
      theme: ThemeData(
        primaryColor: Color(0xFF0066CC),
      ),
      initialRoute: '/',
      routes: {
        Routes.jobs: (context) => MyJob(),
        Routes.jobsPending: (context) => JobPendingPage(),
      },
      home: LoginPage(),
    );
  }
}
