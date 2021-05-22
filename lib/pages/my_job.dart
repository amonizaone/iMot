import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:imot/components/app_bar.dart';
import 'package:imot/components/drawer_manu.dart';
import 'package:intl/intl.dart';
//for date locale

class MyJob extends StatefulWidget {
  static const String routeName = '/job';

  MyJob({Key key}) : super(key: key);

  @override
  _MyJobState createState() => _MyJobState();
}

class _MyJobState extends State<MyJob> {
  // const locale = "th";
  @override
  void initState() {
    super.initState();
    // initializeDateFormatting();
  }

  @override
  Widget build(BuildContext context) {
    String languageCode = Localizations.localeOf(context).languageCode;
    print(languageCode);
    return Scaffold(
      appBar: FlexibleAppBar(),
      resizeToAvoidBottomInset: false,
      drawer: DrawMenu(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text.rich(TextSpan(
                  children: <InlineSpan>[
                    WidgetSpan(
                      child: Image.asset(
                        'assets/images/truck.png',
                        fit: BoxFit.cover,
                        scale: 2,
                      ),
                      // FaIcon(FontAwesomeIcons.truck),
                    ),
                    WidgetSpan(child: SizedBox(width: 8)),
                    WidgetSpan(
                      child: Text(
                        'งานของฉัน',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ))
              ],
            ),
          ),
          DefaultTabController(
            length: 3, // length of tabs
            initialIndex: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  child: TabBar(
                    labelColor: Colors.green,
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      Tab(text: 'ข้อมูลงาน'),
                      Tab(text: 'กำลังดำเนินงาน'),
                      Tab(text: 'รายละเอียด'),
                    ],
                  ),
                ),
                Container(
                  height: 400, //height of TabBarView
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(color: Colors.grey, width: 0.5),
                    ),
                  ),
                  child: TabBarView(
                    children: <Widget>[
                      Container(
                        child: Center(
                          child: Text('Display Tab 1',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Text('Display Tab 2',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Text('Display Tab 3',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ],
                  ),
                ),
                // Container(
                //   height: MediaQuery.of(context).size.height * 0.85,
                //   child: ListView(
                //     shrinkWrap: true,
                //     children: new List.generate(5, (index) {
                //       // Color activeColor =
                //       //     index % 2 == 0 ? Color(0xFFFFDE00) : Color(0xFF0066CC);
                //       var today = DateTime.now();
                //       // var formatter = DateFormat.yMMMMEEEEd();

                //       return Card(
                //         margin: EdgeInsets.all(10.0),
                //         elevation: 5.0,
                //         child: Padding(
                //           padding: const EdgeInsets.only(right: 8),
                //           child: Column(
                //             crossAxisAlignment: CrossAxisAlignment.start,
                //             children: [
                //               ListTile(
                //                 title: Text(
                //                   'JOB-${index + 1}',
                //                 ),
                //                 contentPadding:
                //                     EdgeInsets.only(left: 10, right: 5),
                //                 trailing: Text(
                //                   'วันที่ ${DateFormat('dd MMM yy', 'th').format(today)}',
                //                 ),
                //               ),
                //               Padding(
                //                 padding: EdgeInsets.only(
                //                     left: 8, right: 8, bottom: 10),
                //                 child: ListBody(
                //                   children: [
                //                     Text(
                //                       'งานรับ | จ่ายน้ำมัน',
                //                       style: TextStyle(
                //                         color: Colors.black,
                //                         fontFamily: 'OpenSans',
                //                         fontWeight: FontWeight.bold,
                //                         fontSize: 20,
                //                       ),
                //                     ),
                //                     SizedBox(height: 8),
                //                     Text(
                //                       'เลขที่ใบสั่งงาน: AGH218122013 - $index',
                //                       style: TextStyle(
                //                         color: Colors.red,
                //                       ),
                //                     ),
                //                     SizedBox(height: 8),
                //                     Text('ชื่อลูกค้า: นายอานุวัฒน์ เทียมรัตน์'),
                //                     SizedBox(height: 8),
                //                     Text('จังหวัด: กรุงเทพฯ'),
                //                     SizedBox(height: 8),
                //                     Text(
                //                         'วันที่ปฏิบัติงาน: 03 พ.ค 64 เวลา 11.00'),
                //                     // SizedBox(height: 15),
                //                     Divider(
                //                       height: 20,
                //                     ),
                //                     Text(
                //                       'งานรับ | งานพ่วง',
                //                       style: TextStyle(
                //                         color: Colors.black,
                //                         fontFamily: 'OpenSans',
                //                         fontWeight: FontWeight.bold,
                //                         fontSize: 20,
                //                       ),
                //                     ),
                //                     SizedBox(height: 8),
                //                     Text(
                //                       'เลขที่ใบสั่งงาน: AGH218122013 - $index',
                //                       style: TextStyle(
                //                         color: Colors.red,
                //                       ),
                //                     ),
                //                     SizedBox(height: 8),
                //                     Text('ชื่อลูกค้า: นายอานุวัฒน์ เทียมรัตน์'),
                //                     SizedBox(height: 8),
                //                     Text('จังหวัด: กรุงเทพฯ'),
                //                     SizedBox(height: 8),
                //                     Text(
                //                         'วันที่ปฏิบัติงาน: 03 พ.ค 64 เวลา 11.00'),
                //                     SizedBox(height: 8),
                //                   ],
                //                 ),
                //               )
                //             ],
                //           ),
                //         ),
                //       );
                //     }),
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
