import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:imot/components/app_bar.dart';

class BookingPage extends StatefulWidget {
  BookingPage({Key? key}) : super(key: key);

  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FlexibleAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Text(
                'จัดการบุ๊คกิ้ง',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true, // use it
              childAspectRatio: (1 / .7),
              padding: EdgeInsets.all(3.0),
              children: <Widget>[
                DashboardItemStatusBooking(
                  Title: 'ทั้งหมด',
                  ColorCustom: Color(0xFFff3385),
                  TotalGeneral: 0,
                  TotalTemperature: 0,
                ),
                DashboardItemStatusBooking(
                  Title: 'รอการยืนยัน',
                  ColorCustom: Color(0xFFcc33ff),
                  TotalGeneral: 0,
                  TotalTemperature: 0,
                ),
                DashboardItemStatusBooking(
                  Title: 'ยินยันสำเร็จ',
                  ColorCustom: Color(0xFF3385ff),
                  TotalGeneral: 0,
                  TotalTemperature: 0,
                ),
                DashboardItemStatusBooking(
                  Title: 'กำลังเข้ารับ',
                  ColorCustom: Color(0xFFffad33),
                  TotalGeneral: 0,
                  TotalTemperature: 0,
                ),
                DashboardItemStatusBooking(
                  Title: 'เข้ารับสำเร็จ',
                  ColorCustom: Color(0xFF1f7a3d),
                  TotalGeneral: 0,
                  TotalTemperature: 0,
                ),
                DashboardItemStatusBooking(
                  Title: 'เข้ารับไม่สำรเร็จ',
                  ColorCustom: Color(0xFFff3333),
                  TotalGeneral: 1,
                  TotalTemperature: 10000,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardItemStatusBooking extends StatelessWidget {
  final String Title;
  final int TotalTemperature;
  final int TotalGeneral;
  final Color ColorCustom;
  DashboardItemStatusBooking(
      {Key? key,
      required this.Title,
      required this.ColorCustom,
      this.TotalGeneral = 0,
      this.TotalTemperature = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    int total = TotalTemperature + TotalGeneral;
    // Color hex = Color(0xFF + hexColorCode);
    return Card(
      elevation: 1,
      color: ColorCustom,
      child: Container(
        padding: EdgeInsets.all(2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  '$Title',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                // crossAxisAlignment: CrossAxisAlignment.,
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      margin: EdgeInsets.symmetric(horizontal: 1),
                      child: Column(
                        // mainAxisAlignment:
                        //     MainAxisAlignment.spaceBetween,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'ควบคุมอุณหภูมิ',
                            style: TextStyle(
                              fontSize: 11,
                              color: ColorCustom,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '$TotalTemperature',
                            style: TextStyle(
                              fontSize: 20,
                              color: ColorCustom,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 1),
                      color: Colors.white,
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'ไม่ควบคุมอุณหภูมิ',
                            style: TextStyle(
                              fontSize: 11,
                              color: ColorCustom,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '$TotalGeneral',
                            style: TextStyle(
                              fontSize: 20,
                              color: ColorCustom,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              // height: 40,
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.symmetric(
                  horizontal: 1,
                  vertical: 2,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'รวม',
                      style: TextStyle(
                        fontSize: 14,
                        color: ColorCustom,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '${total}',
                      style: TextStyle(
                        fontSize: 14,
                        color: ColorCustom,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
