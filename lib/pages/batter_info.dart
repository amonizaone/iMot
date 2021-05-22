// import 'package:battery_info/battery_info_plugin.dart';
// import 'package:battery_info/enums/charging_status.dart';
// import 'package:battery_info/model/android_battery_info.dart';
// import 'package:flutter/material.dart';
// // Import package
// // import 'package:battery/battery_info.dart';
// // import 'package:battery_info/model/android_battery_info.dart';
// // import 'package:battery_info/enums/charging_status.dart';
// // import 'package:battery_info/model/iso_battery_info.dart';

// class BatteryInfo extends StatefulWidget {
//   BatteryInfo({Key key}) : super(key: key);

//   @override
//   _BatteryInfoState createState() => _BatteryInfoState();
// }

// class _BatteryInfoState extends State<BatteryInfo> {
//   void initState() {
//     super.initState();
//     // Access current battery health - Android
//     print('state');
// //     print(
// //         "Battery Health: ${(await BatteryInfoPlugin().androidBatteryInfo).health}");

// // // Access current battery level - IOS
// //     print(
// //         "Battery Level: ${(await BatteryInfoPlugin().iosBatteryInfo).batteryLevel}");

// // // Calculate estimated charging time
// //     BatteryInfoPlugin()
// //         .androidBatteryInfoStream
// //         .listen((AndroidBatteryInfo batteryInfo) {
// //       print(
// //           "Charge time remaining: ${(batteryInfo.chargeTimeRemaining / 1000 / 60).truncate()} minutes");
// //     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Battery Info'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             FutureBuilder<AndroidBatteryInfo>(
//                 future: BatteryInfoPlugin().androidBatteryInfo,
//                 builder: (context, snapshot) {
//                   if (snapshot.hasData) {
//                     return Text(
//                         'Battery Health: ${snapshot.data.health.toUpperCase()}');
//                   }
//                   return CircularProgressIndicator();
//                 }),
//             SizedBox(
//               height: 20,
//             ),
//             StreamBuilder<AndroidBatteryInfo>(
//                 stream: BatteryInfoPlugin().androidBatteryInfoStream,
//                 builder: (context, snapshot) {
//                   if (snapshot.hasData) {
//                     return Column(
//                       children: [
//                         Text("Voltage: ${(snapshot.data.voltage)} mV"),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Text(
//                             "Charging status: ${(snapshot.data.chargingStatus.toString().split(".")[1])}"),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Text(
//                             "Battery Level: ${(snapshot.data.batteryLevel)} %"),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Text("Technology: ${(snapshot.data.technology)} "),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Text(
//                             "Battery present: ${snapshot.data.present ? "Yes" : "False"} "),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Text("Scale: ${(snapshot.data.scale)} "),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Text(
//                             "Remaining energy: ${-(snapshot.data.remainingEnergy * 1.0E-9)} Watt-hours,"),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         _getChargeTime(snapshot.data),
//                       ],
//                     );
//                   }
//                   return CircularProgressIndicator();
//                 })
//           ],
//         ),
//       ),
//     );
//   }
// }

// Widget _getChargeTime(AndroidBatteryInfo data) {
//   if (data.chargingStatus == ChargingStatus.Charging) {
//     return data.chargeTimeRemaining == -1
//         ? Text("Calculating charge time remaining")
//         : Text(
//             "Charge time remaining: ${(data.chargeTimeRemaining / 1000 / 60).truncate()} minutes");
//   }
//   return Text("Battery is full or not connected to a power source");
// }
