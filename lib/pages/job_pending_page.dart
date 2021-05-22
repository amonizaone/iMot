import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:imot/components/app_bar.dart';
import 'package:imot/components/drawer_manu.dart';

class JobPendingPage extends StatefulWidget {
  static const String routeName = '/job-pending';

  JobPendingPage({Key key}) : super(key: key);

  @override
  _JobPendingPageState createState() => _JobPendingPageState();
}

class _JobPendingPageState extends State<JobPendingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FlexibleAppBar(),
      drawer: DrawMenu(),
      body: ListView(
        children: new List.generate(100, (index) {
          return Container(
            // width: 100,
            child: Card(
              margin: EdgeInsets.all(10.0),
              elevation: 5.0,
              child: InkWell(
                onTap: () {
                  print('Card tapped.');
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisSize: MainAxisSize.min,
                    // verticalDirection: VerticalDirection.up,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        // ma: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10.0),
                            // height: 150,
                            // height: double.infinity,
                            color: Colors.amber[200],
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'งานรับ',
                                ),
                                Text(
                                  'จ่ายน้ำมัน',
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'เลขที่ใบสั่งงาน: AGH218122013 - $index',
                                style: TextStyle(color: Colors.red),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text('ชื่อลูกค้า: นายอานุวัฒน์ เทียมรัตน์'),
                              SizedBox(
                                height: 8,
                              ),
                              Text('จังหวัด: กรุงเทพฯ'),
                              SizedBox(
                                height: 8,
                              ),
                              Text('วันที่ปฏิบัติงาน: 03 พ.ค 64 เวลา 11.00'),
                            ],
                          )
                        ],
                      ),

                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          'รายละเอียด',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      // ButtonTheme(
                      //   // make buttons use the appropriate styles for cards
                      //   child: ButtonBar(
                      //     children: <Widget>[
                      //       ElevatedButton(
                      //         child: const Text('รายละเอียด'),
                      //         onPressed: () {/* ... */},
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                ),
                // child: Row(
                //   // crossAxisAlignment: CrossAxisAlignment.start,
                //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   // verticalDirection: VerticalDirection.down,
                //   // mainAxisSize: MainAxisSize.max,
                //   children: [
                //     // Container(
                //     //   padding: EdgeInsets.all(10.0),
                //     //   // height: 150,
                //     //   // height: double.infinity,
                //     //   color: Colors.amber[200],
                //     //   child: Column(
                //     //     mainAxisAlignment: MainAxisAlignment.center,
                //     //     children: [
                //     //       Text(
                //     //         'งานรับ',
                //     //       ),
                //     //       Text(
                //     //         'จ่ายน้ำมัน',
                //     //       ),
                //     //     ],
                //     //   ),
                //     // ),
                //     // SizedBox(
                //     //   width: 10,
                //     // ),
                //     Column(
                //       // crossAxisAlignment: CrossAxisAlignment.start,
                //       // mainAxisSize: MainAxisSize.min,
                //       // verticalDirection: VerticalDirection.up,
                //       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         Text(
                //           'เลขที่ใบสั่งงาน: AGH218122013',
                //           style: TextStyle(color: Colors.red),
                //         ),
                //         SizedBox(
                //           height: 8,
                //         ),
                //         Text('ชื่อลูกค้า: นายอานุวัฒน์ เทียมรัตน์'),
                //         SizedBox(
                //           height: 8,
                //         ),
                //         Text('จังหวัด: กรุงเทพฯ'),
                //         SizedBox(
                //           height: 8,
                //         ),
                //         Text('วันที่ปฏิบัติงาน: 03 พ.ค 64 เวลา 11.00'),
                //         // Align(
                //         //   alignment: Alignment.bottomRight,
                //         //   child: Text(
                //         //     'รายละเอียด',
                //         //     textAlign: TextAlign.right,
                //         //   ),
                //         // ),
                //         ButtonTheme(
                //           // make buttons use the appropriate styles for cards
                //           child: ButtonBar(
                //             children: <Widget>[
                //               ElevatedButton(
                //                 child: const Text('Flutter'),
                //                 onPressed: () {/* ... */},
                //               ),
                //               ElevatedButton(
                //                 child: const Text('Show More'),
                //                 onPressed: () {/* ... */},
                //               ),
                //             ],
                //           ),
                //         ),
                //       ],
                //     )
                //   ],
                // ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
