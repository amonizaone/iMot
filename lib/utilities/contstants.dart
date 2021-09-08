import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:imot/pages/home_page.dart';
import 'package:intl/intl.dart';

enum Page { screenDashboard, screenProfile, screenSearch }
// enum Page { screenDashboard, screenProfile, screenSearch }

extension on Page {
  String get route => describeEnum(this);
}

// final Map<Page, Widget> _fragments = {
//   Page.screenDashboard: DashboardPage(),
//   Page.screenProfile: UserProfilePage(),
//   Page.screenSearch: SearchPage(),
// };

class AppConstants {
  static Map<Page, Widget> fragments = {
    Page.screenDashboard: DashboardPage(),
    Page.screenProfile: UserProfilePage(),
    Page.screenSearch: SearchPage(),
  };

  static const String BASE_URL =
      "http://api-mobile.interexpress.co.th/imot-api/v1";
}

final kHintTextStyle = TextStyle(
  color: Colors.grey[350],
  fontFamily: 'OpenSans',
);

final kLabelStyle = TextStyle(
  color: Colors.grey,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

final kBoxDecorationStyle = BoxDecoration(
  // color: Color(0xFF6CA8F1),
  // color: Colors.grey[],
  // color: Colors.grey[400],
  borderRadius: BorderRadius.circular(10.0),
  border: Border.all(
    width: 1,
    color: Colors.grey,
  ),
  // boxShadow: [
  //   BoxShadow(
  //     color: Colors.black12,
  //     blurRadius: 6.0,
  //     offset: Offset(0, 2),
  //   ),
  // ],
);

final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  primary: Colors.black87,
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2.0)),
  ),
);
