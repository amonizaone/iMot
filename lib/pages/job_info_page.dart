// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:imot/components/app_bar.dart';
// import 'dart:async';

// class JobInfoPage extends StatefulWidget {
//   JobInfoPage({Key? key}) : super(key: key);

//   @override
//   _JobInfoPageState createState() => _JobInfoPageState();
// }

// class _JobInfoPageState extends State<JobInfoPage> {
//   Completer<GoogleMapController> _controller = Completer();
//   // final ph = PermissionHandler();
//   CameraPosition _kInitialPosition =
//       CameraPosition(target: LatLng(-33.852, 151.211), zoom: 11.0);

//   LatLng _lastTap;
//   LatLng _lastLongPress;

//   static final CameraPosition _kGooglePlex = CameraPosition(
//     target: LatLng(37.42796133580664, -122.085749655962),
//     zoom: 14.4746,
//   );

//   static final CameraPosition _kLake = CameraPosition(
//       bearing: 192.8334901395799,
//       target: LatLng(37.43296265331129, -122.08832357078792),
//       tilt: 59.440717697143555,
//       zoom: 19.151926040649414);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: Text('การแจ้งเตือน'),
//       //   actions: [],
//       // ),
//       appBar: FlexibleAppBar(
//         showTile: true,
//         titleCentered: false,
//         title: 'เลขใบงาน JO2108120033',
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               // GOOGLE MAP
//               Container(
//                 height: 200,
//                 color: Colors.blueGrey,
//                 child: GoogleMap(
//                   mapType: MapType.normal,
//                   initialCameraPosition: _kInitialPosition,
//                   onMapCreated: (GoogleMapController controller) {
//                     _controller.complete(controller);
//                   },
//                 ),
//               ),
//               Container(
//                 height: 200,
//                 color: Colors.blueAccent,
//               )
//             ],
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton.extended(
//         onPressed: _goToTheLake,
//         label: Text('To the lake!'),
//         icon: Icon(Icons.directions_boat),
//       ),
//     );
//   }

//   Future<void> _goToTheLake() async {
//     // final GoogleMapController controller = await _controller.future;
//     // controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
//   }
// }
