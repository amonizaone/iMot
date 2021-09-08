import 'package:flutter/material.dart';
import 'package:imot/pages/job_pending_page.dart';
import 'package:imot/pages/login_page.dart';
import 'package:imot/pages/my_job.dart';
import 'package:imot/test_page/booking_page.dart';
import 'package:imot/test_page/login_page_1.dart';
import 'package:imot/test_page/profile_info_page.dart';
import 'package:imot/test_page/service_page.dart';
import 'package:imot/utilities/ApiBaseHelper.dart';
import 'package:imot/utilities/routes.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'pages/home_page.dart';
import 'utilities/contstants.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Intl.defaultLocale = "th";
  initializeDateFormatting();

  // ApiBaseHelper.baseAPI = BASE_URL;
  ApiBaseHelper.url = AppConstants.BASE_URL;
  // ApiBaseHelper.dio.p
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
      // home: LoginPage(),
      home: HomePage(),
    );
  }
}
