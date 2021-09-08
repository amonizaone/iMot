import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:imot/components/app_bar.dart';
import 'package:imot/components/drawer_manu.dart';
import 'package:http/http.dart' as http;
import 'package:imot/pages/job_info_page.dart';
import 'package:imot/utilities/RouteHelper.dart';

// class HomePage extends StatefulWidget {
//   HomePage({Key? key}) : super(key: key);

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {

class HomePage extends HookWidget {
  final client = Dio();
  final textDriverStyle = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  Future<Null> registerDevice() async {
    const requestUrl = "http://localhost:5000/v1/mobiles/register/device";

    try {
      var params = {
        "item": "itemx",
        "options": [1, 2, 3],
      };

      // final response = await client.post(
      //   requestUrl,
      //   options: Options(headers: {
      //     HttpHeaders.contentTypeHeader: "application/json",
      //   }),
      //   data: jsonEncode(params),
      // );Connection-specific DNS Suffix: interexpress.local
// Description: Intel(R) Wi-Fi 6 AX201 160MHz
// Physical Address: ‎BC-54-2F-7C-D8-14
// DHCP Enabled: Yes
// IPv4 Address: 10.10.24.140
// IPv4 Subnet Mask: 255.255.255.0
// Lease Obtained: Tuesday, June 8, 2021 8:47:23 AM
// Lease Expires: Tuesday, June 8, 2021 10:09:51 PM
// IPv4 Default Gateway: 10.10.24.1
// IPv4 DHCP Server: 172.24.10.11
// IPv4 DNS Servers: 172.24.10.11, 10.10.9.5, 203.146.237.237
// IPv4 WINS Server:
// NetBIOS over Tcpip Enabled: Yes
// Link-local IPv6 Address: fe80::649c:fdaf:30a6:416c%25
// IPv6 Default Gateway:
// IPv6 DNS Server:
      // final response = await client.get('http://192.168.137.1:5000/v1/users/1');

      http
          .get(Uri.parse('http://10.10.24.140:5000/v1/users/1'))
          .then((response) {
        return response.statusCode == 200
            ? response.body
            : throw 'Error when getting data';
      }).then(
        (body) => print(body),
      );
      // json.decode(body)
      // if (response.statusCode == 200) {
      //   print('success');
      //   //return _yourClass_.fromJson(response.data);
      // } else {
      //   print('${response.statusCode} : ${response.data.toString()}');
      //   throw response.statusCode;
      // }
    } catch (error) {
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    final navigatorKey = GlobalObjectKey<NavigatorState>(context);

    Widget TextCount(String title, int value) {
      return Column(
        children: [
          Text(
            '${title}',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '${value}',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      );
    }

    return WillPopScope(
      onWillPop: () async {
        if (navigatorKey.currentState!.canPop()) {
          navigatorKey.currentState!.pop();
          return false;
        }

        return true;
      },
      child: Scaffold(
        appBar: FlexibleAppBar(),
        drawer: DrawMenu(),
        backgroundColor: Color(0xFF0772ba),
        body: SingleChildScrollView(
          child: Container(
            // color: Color(0xFF0772ba),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Card(
                  color: Color(0xFF0772ba),
                  elevation: 5,
                  child: Container(
                    height: 100.0,
                    // color: Colors.blueAccent,
                    child: Row(
                      children: [
                        Container(
                          height: 100.0,
                          width: 78.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                'https://cdn.iconscout.com/icon/free/png-512/driver-1785014-1518720.png',
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 100,
                            padding: EdgeInsets.only(
                              top: 2,
                              left: 5,
                              right: 5,
                              bottom: 2,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'อานุวัฒน์ เทียมรัตน์',
                                  style: textDriverStyle,
                                ),
                                Text(
                                  'รหัส ${6307852}',
                                  style: textDriverStyle,
                                ),
                                Text(
                                  'รถควบคุมอุณหภูมิ-กิ่งแก้ว',
                                  style: textDriverStyle,
                                ),
                                Text(
                                  'รถบริษัท',
                                  style: textDriverStyle,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 90,
                          child: VerticalDivider(color: Colors.white),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 5, right: 5),
                              height: 70,
                              width: 120,
                              // padding: EdgeInsets.all(10),
                              // color: Colors.green,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                    'https://www.tabienhengheng.com/wp-content/uploads/2020/08/%E0%B8%81%E0%B8%97%E0%B8%A1.jpg',
                                  ),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '2ฒห-2896',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'กรุงเทพมหานคร',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              'TRC-01',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          //                    <--- top side
                          color: Color(0xFFfcdf09),
                          width: 5.0,
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          tileColor: Color(0xFF003cb3),
                          enabled: false,
                          title: Text(
                            'รายการจ็อบ',
                          ),
                          // leading: Text('จ๊อบที่รอปฏิบัติงาน'),
                          subtitle: Text('จ็อบที่รอปฏิบัติงาน'),
                          leading: Image.network(
                            'https://img.icons8.com/bubbles/2x/list.png',
                            scale: 4,
                          ),
                          contentPadding: EdgeInsets.only(
                            left: 2,
                            right: 5,
                            top: 0,
                            bottom: 0,
                          ),
                          trailing: ElevatedButton(
                              onPressed: null, child: Text('3 จ็อบ')),
                        ),
                        Expanded(
                            child: Container(
                          color: Colors.grey,
                          child: ListTile(
                            title: Text(
                              'จ็อบที่กำลังปฏิบัติงาน',
                            ),
                            // leading: Text('จ๊อบที่รอปฏิบัติงาน'),
                            subtitle: Text('จ็อบที่รอปฏิบัติงาน'),
                            contentPadding:
                                EdgeInsets.only(left: 10, right: 5, top: 1),
                            trailing: ElevatedButton(
                                onPressed: null, child: Text('3 จ็อบ')),
                          ),
                        )),
                        SizedBox(
                          height: 60,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              TextCount('งานรับ', 0),
                              TextCount('งานส่ง', 0),
                              TextCount('รวม', 0),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        ListTile(
                          tileColor: Color(0xFF80ccff),
                          enabled: false,
                          title: Text(
                            'รอการตอบรับ',
                          ),
                          leading: Image.network(
                            'https://image.flaticon.com/icons/png/512/1027/1027650.png',
                            scale: 13,
                          ),
                          contentPadding: EdgeInsets.only(
                            left: 5,
                            right: 5,
                            top: 0,
                            bottom: 0,
                          ),
                          trailing: ElevatedButton(
                            onPressed: () {
                              // RouteHelper.pushWidget(context, JobInfoPage());
                            },
                            child: Text('3 จ็อบ'),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                // Center(
                //   child: ElevatedButton(
                //     child: Text('Register Device'),
                //     onPressed: () async => {
                //       print('register device'),
                //       await registerDevice(),
                //     },
                //   ),
                // )
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
