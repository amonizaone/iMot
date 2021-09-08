import 'package:flutter/material.dart';
import 'package:imot/components/app_bar.dart';
import 'package:intl/intl.dart';

class NotificationPage extends StatefulWidget {
  NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('การแจ้งเตือน'),
      //   actions: [],
      // ),
      appBar: FlexibleAppBar(
        showTile: true,
        titleCentered: false,
        title: 'การแจ้งเตือน',
      ),
      body: ListView(
        shrinkWrap: true,
        children: new List.generate(10, (index) {
          // Color activeColor =
          //     index % 2 == 0 ? Color(0xFFFFDE00) : Color(0xFF0066CC);
          var today = DateTime.now();
          // var formatter = DateFormat.yMMMMEEEEd();

          return Card(
            elevation: 5.0,
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
              ],
            ),
          );
        }),
      ),
    );
  }
}
