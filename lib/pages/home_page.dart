import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:imot/models/shared/static.dart';
import 'package:imot/pages/batter_info.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    // SystemChrome.setPreferredOrientations([
    //   DeviceOrientation.portraitUp,
    //   DeviceOrientation.portraitDown,
    // ]);
  }

  @override
  dispose() {
    // SystemChrome.setPreferredOrientations([
    //   DeviceOrientation.portraitUp,
    //   DeviceOrientation.portraitDown,
    // ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      primary: Colors.black87,
      minimumSize: Size(88, 36),
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2.0)),
      ),
    );

    return Scaffold(
      // appBar: AppBar(
      //   // title: Text(
      //   //   'login',
      //   // ),
      //   actions: [],
      // ),
      body: Container(
          color: AppSetting.loginBg,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: EdgeInsets.only(top: 50),
                  // width: 100,]
                  // padding: EdgeInsets.all(10.0),
                  // color: Colors.amberAccent,
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 100,
                  child: Image.asset(
                    'assets/images/iel-logo.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    TextButton(
                      style: flatButtonStyle,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BatteryInfo()));
                      },
                      child: Text('Looks like a FlatButton'),
                    )
                  ],
                ),
              )
            ],
          )
          // Column(
          //   children: [
          //     Container(
          //       padding: EdgeInsets.all(10.0),
          //       color: Colors.red,
          //     )
          //   ],
          // )
          // Center(
          //   child: Row(
          //     children: [
          //       Text(
          //         'User Name',
          //       ),
          //       Text(
          //         'Password',
          //       )
          //     ],
          //   ),
          // ),
          ),
    );
  }
}
