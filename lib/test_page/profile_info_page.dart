import 'package:flutter/material.dart';
import 'package:imot/components/app_bar.dart';

class ProfileInfoPage extends StatefulWidget {
  ProfileInfoPage({Key? key}) : super(key: key);

  @override
  _ProfileInfoPageState createState() => _ProfileInfoPageState();
}

class _ProfileInfoPageState extends State<ProfileInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0772ba),
      appBar: FlexibleAppBar(
        title: 'โปรไฟล์',
        showTile: true,
        titleCentered: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text('Profile'),
            // ClipRect(
            //   // clipper: CustomClipper(reclip: Li),
            //   child: Container(
            //     // width: 100,
            //     padding: EdgeInsets.all(8),
            //     decoration: BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.circular(300),
            //         border: Border.all(
            //           width: 5,
            //           color: Colors.yellow[600],
            //         )),
            //     child: Image.network(
            //       'https://scontent.fbkk22-2.fna.fbcdn.net/v/t1.6435-9/180561089_4249931351718705_8495803659522158423_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeFC_9fXtE1s4XiAInlSVFhhlc2J5KNsStGVzYnko2xK0eF9zaJCEHKF1X-mPjYfCHNpjHJ2W54xJK6LeVTCyZzg&_nc_ohc=OpOX6nWtslUAX9vmIT-&_nc_oc=AQmptJb9174a-oJQODeskP9TepN9F2c4bQf4K5O44ibscwOKrc1644IgoLSdgGAh6i06Z6Fy18qSXpky6zUd7Uz5&_nc_ht=scontent.fbkk22-2.fna&oh=77696db0c369a8ac307a04f3637f6500&oe=613DC070',
            //       // fit: BoxFit.cover,
            //       // scale: 1.5,
            //     ),
            //   ),
            // )
            Container(
              color: Colors.white,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.white,
                        child: ClipOval(
                          child: Image.network(
                            'https://scontent.fbkk22-2.fna.fbcdn.net/v/t1.6435-9/180561089_4249931351718705_8495803659522158423_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeFC_9fXtE1s4XiAInlSVFhhlc2J5KNsStGVzYnko2xK0eF9zaJCEHKF1X-mPjYfCHNpjHJ2W54xJK6LeVTCyZzg&_nc_ohc=OpOX6nWtslUAX9vmIT-&_nc_oc=AQmptJb9174a-oJQODeskP9TepN9F2c4bQf4K5O44ibscwOKrc1644IgoLSdgGAh6i06Z6Fy18qSXpky6zUd7Uz5&_nc_ht=scontent.fbkk22-2.fna&oh=77696db0c369a8ac307a04f3637f6500&oe=613DC070',
                            height: 120,
                            width: 120,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 1,
                        right: 1,
                        child: Container(
                          height: 30,
                          width: 30,
                          child: Icon(
                            Icons.add_a_photo,
                            color: Colors.white,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('อานุวัฒน์ เทียมรัตน์'),
                        Text('รหัสสมาชิก:D2110000'),
                        Text('อีเมล:amonizaone@gmail.com'),
                        Text('สถานะ: ยังไม่ได้ยืนยันตัวตน'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
