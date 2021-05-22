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
        shrinkWrap: true,
        children: new List.generate(5, (index) {
          Color activeColor =
              index % 2 == 0 ? Color(0xFFFFDE00) : Color(0xFF0066CC);
          return Card(
            margin: EdgeInsets.all(10.0),
            elevation: 5.0,
            child: Padding(
              padding: const EdgeInsets.only(right: 8),
              child: InkWell(
                  onTap: () {
                    print('Card tapped.');
                  },
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 140,
                        decoration: BoxDecoration(
                          color: activeColor,
                          // border: Border.all(width: 1, color: Colors.black38),
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(1),
                          ),
                        ),
                        padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('งานรับ'),
                            SizedBox(height: 8),
                            Text('จ่ายน้ำมัน'),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(
                                'เลขที่ใบสั่งงาน: AGH218122013 - $index',
                                style: TextStyle(
                                  color: Colors.red,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text('ชื่อลูกค้า: นายอานุวัฒน์ เทียมรัตน์'),
                              SizedBox(height: 8),
                              Text('จังหวัด: กรุงเทพฯ'),
                              SizedBox(height: 8),
                              Text('วันที่ปฏิบัติงาน: 03 พ.ค 64 เวลา 11.00'),
                              SizedBox(height: 8),
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
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       Row(
                  //         children: [
                  //           Container(
                  //             padding: EdgeInsets.all(10.0),
                  //             color: Colors.amber[200],
                  //             child: Column(
                  //               mainAxisAlignment: MainAxisAlignment.center,
                  //               children: [
                  //                 Text(
                  //                   'งานรับ',
                  //                 ),
                  //                 Text(
                  //                   'จ่ายน้ำมัน',
                  //                 ),
                  //               ],
                  //             ),
                  //           ),
                  //           SizedBox(
                  //             width: 10,
                  //           ),
                  //           Column(
                  //             crossAxisAlignment: CrossAxisAlignment.start,
                  //             children: [
                  //               Text(
                  //                 'เลขที่ใบสั่งงาน: AGH218122013 - $index',
                  //                 style: TextStyle(color: Colors.red),
                  //               ),
                  //               SizedBox(
                  //                 height: 8,
                  //               ),
                  //               Text('ชื่อลูกค้า: นายอานุวัฒน์ เทียมรัตน์'),
                  //               SizedBox(
                  //                 height: 8,
                  //               ),
                  //               Text('จังหวัด: กรุงเทพฯ'),
                  //               SizedBox(
                  //                 height: 8,
                  //               ),
                  //               Text('วันที่ปฏิบัติงาน: 03 พ.ค 64 เวลา 11.00'),
                  //             ],
                  //           )
                  //         ],
                  //       ),

                  //       Align(
                  //         alignment: Alignment.bottomRight,
                  //         child: Text(
                  //           'รายละเอียด',
                  //           textAlign: TextAlign.right,
                  //           style: TextStyle(
                  //             color: Colors.blue,
                  //             decoration: TextDecoration.underline,
                  //           ),
                  //         ),
                  //       ),
                  //       // ButtonTheme(
                  //       //   // make buttons use the appropriate styles for cards
                  //       //   child: ButtonBar(
                  //       //     children: <Widget>[
                  //       //       ElevatedButton(
                  //       //         child: const Text('รายละเอียด'),
                  //       //         onPressed: () {/* ... */},
                  //       //       ),
                  //       //     ],
                  //       //   ),
                  //       // ),
                  //     ],
                  //   ),
                  // ),
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
