import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:imot/components/app_bar.dart';
import 'package:imot/components/drawer_manu.dart';
import 'package:imot/components/page_title.dart';
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

  List<Tab> _tabs = [
    Tab(text: 'ข้อมูลงาน'),
    Tab(text: 'กำลังดำเนินงาน'),
    Tab(text: 'รายละเอียด'),
  ];
  List<Widget> _generalWidgets = [];
  TabController _tabController;

  @override
  void initState() {
    // _tabController = getTabController();
    super.initState();
    // initializeDateFormatting();
  }

  // TabController getTabController() {
  //   return TabController(length: _tabs.length, vsync: null)
  //     ..addListener(_updatePage);
  // }
  List<Widget> loadTab() {
    List<Widget> outWidget = [];
    for (var item in this._tabs) {
      print('Tab $item');
      outWidget.add(
        Container(
          height: MediaQuery.of(context).size.height * 0.85,
          child: ListView(
            shrinkWrap: true,
            children: new List.generate(6, (index) {
              // Color activeColor =
              //     index % 2 == 0 ? Color(0xFFFFDE00) : Color(0xFF0066CC);
              var today = DateTime.now();
              // var formatter = DateFormat.yMMMMEEEEd();

              return Card(
                margin: EdgeInsets.all(10.0),
                elevation: 5.0,
                child: Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        title: Text(
                          'JOB-${index + 1}',
                        ),
                        contentPadding: EdgeInsets.only(left: 10, right: 5),
                        trailing: Text(
                          'วันที่ ${DateFormat('dd MMM yy', 'th').format(today)}',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8, right: 8, bottom: 10),
                        child: ListBody(
                          children: [
                            Text(
                              'งานรับ | จ่ายน้ำมัน',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'OpenSans',
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(height: 8),
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
                            // SizedBox(height: 15),
                            Divider(
                              height: 20,
                            ),
                            Text(
                              'งานรับ | งานพ่วง',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'OpenSans',
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(height: 8),
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
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      );
    }

    return outWidget;
  }

  void _updatePage() {
    setState(() {});
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
          PageTitle(
            title: 'งานของฉัน',
            imagePath: 'assets/images/truck.png',
          ),
          DefaultTabController(
            length: _tabs.length, // length of tabs
            initialIndex: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TabBar(
                  labelColor: Colors.green,
                  unselectedLabelColor: Colors.black,
                  tabs: _tabs,
                ),
                Container(
                  height: MediaQuery.of(context).size.height *
                      0.7, //height of TabBarView
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(color: Colors.grey, width: 0.5),
                    ),
                  ),
                  child: TabBarView(
                    children: this.loadTab(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> getWidgets() {
    _generalWidgets.clear();
    for (int i = 0; i < _tabs.length; i++) {
      _generalWidgets.add(getWidget(i));
    }
    return _generalWidgets;
  }

  Widget getWidget(int widgetNumber) {
    return Center(
      child: Text("Widget nr: $widgetNumber"),
    );
  }
}
