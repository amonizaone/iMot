import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:imot/components/app_bar.dart';
import 'package:imot/components/drawer_manu.dart';

// class HomePage extends StatefulWidget {
//   HomePage({Key key}) : super(key: key);

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {

class HomePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final navigatorKey = GlobalObjectKey<NavigatorState>(context);
    return WillPopScope(
      onWillPop: () async {
        if (navigatorKey.currentState.canPop()) {
          navigatorKey.currentState.pop();
          return false;
        }

        return true;
      },
      child: Scaffold(
        appBar: FlexibleAppBar(),
        drawer: DrawMenu(),
        body: Container(
          child: Column(
            children: <Widget>[
              Text('TT')
              // Expanded(
              //   child: Navigator(
              //     key: navigatorKey,
              //     initialRoute: Page.screenDashboard.route,
              //     onGenerateRoute: (settings) {
              //       final pageName = settings.name;

              //       final page = AppConstants.fragments.keys.firstWhere(
              //         (element) => describeEnum(element) == pageName,
              //       );

              //       return MaterialPageRoute(
              //         settings: settings,
              //         builder: (context) => AppConstants.fragments[page],
              //       );
              //     },
              //   ),
              // ),
              // Container(
              //   width: double.infinity,
              //   height: 50.0,
              //   padding: const EdgeInsets.symmetric(horizontal: 15.0),
              //   color: Colors.indigo[400],
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: <Widget>[
              //       ElevatedButton(
              //         onPressed: () => navigatorKey.currentState
              //             .pushNamed(Page.screenDashboard.route),
              //         child: Text('Dashboard'),
              //       ),
              //       ElevatedButton(
              //         onPressed: () => navigatorKey.currentState
              //             .pushNamed(Page.screenProfile.route),
              //         child: Text('Profile'),
              //       ),
              //       ElevatedButton(
              //         onPressed: () => navigatorKey.currentState
              //             .pushNamed(Page.screenSearch.route),
              //         child: Text('Search'),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class UserProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(' screenProfile ...'),
    );
  }
}

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(' screenDashboard ...'),
    );
  }
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(' screenSearch ...'),
    );
  }
}
