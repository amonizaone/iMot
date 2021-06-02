import 'package:flutter/material.dart';
import 'package:imot/pages/info_page.dart';
import 'package:imot/pages/notify_page.dart';
import 'package:imot/pages/worker_management_page.dart';
import 'package:imot/utilities/routes.dart';

class DrawMenu extends StatelessWidget {
  const DrawMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        // color: Color.fromRGBO(50, 75, 205, 1),
        // type: MaterialType.card,
        color: Theme.of(context).primaryColor,
        child: ListView(
          children: [
            DrawerHeader(
              child: Container(
                // height: 10,
                color: Colors.redAccent,
              ),
            ),
            ListTile(
              leading: Icon(Icons.checklist, size: 40, color: Colors.black54),
              title: Text(
                'งานรอการตอบรับ',
                style: TextStyle(
                  color: Colors.black54,
                  letterSpacing: 1.2,
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () => {
                Navigator.pushReplacementNamed(context, Routes.jobsPending),
              },
            ),
            ListTile(
              leading: Icon(
                Icons.local_shipping,
                size: 40,
                color: Colors.black54,
              ),
              title: Text(
                'งานของฉัน',
                style: TextStyle(
                  color: Colors.black54,
                  letterSpacing: 1.2,
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () => {
                Navigator.pushReplacementNamed(context, Routes.jobs),
              },
            ),
            ListTile(
              leading: Icon(
                Icons.system_update_tv,
                size: 40,
                color: Colors.black54,
              ),
              title: Text(
                'ข้อมูลเครือง',
                style: TextStyle(
                  color: Colors.black54,
                  letterSpacing: 1.2,
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InfoPage(),
                  ),
                ),
              },
            ),
            ListTile(
              leading: Icon(
                Icons.system_update_tv,
                size: 40,
                color: Colors.black54,
              ),
              title: Text(
                'Worker',
                style: TextStyle(
                  color: Colors.black54,
                  letterSpacing: 1.2,
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WorkerMagementPage(),
                  ),
                ),
              },
            ),
            // ListTile(
            //   leading: Icon(
            //     Icons.system_update_tv,
            //     size: 40,
            //     color: Colors.black54,
            //   ),
            //   title: Text(
            //     'การแจ้งเตือน',
            //     style: TextStyle(
            //       color: Colors.black54,
            //       letterSpacing: 1.2,
            //       fontFamily: 'OpenSans',
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            //   onTap: () => {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => NotifyPage(),
            //       ),
            //     ),
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
