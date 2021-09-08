import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart';
import 'package:imot/components/TextField.dart';
import 'package:imot/pages/home_page.dart';
import 'package:imot/repositories/LoginRepository.dart';
import 'package:imot/utilities/ApiBaseHelper.dart';
import 'package:imot/utilities/RouteHelper.dart';
import 'package:imot/utilities/contstants.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:get/get.dart';

// import 'package:imot/pages/batter_info.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //  void _hendleLogin()=>{
  //   //  ApiBaseHelper
  // }
  var alertStyle = AlertStyle(
    animationType: AnimationType.fromTop,
    isCloseButton: true,
    isOverlayTapDismiss: false,
    descStyle: TextStyle(fontWeight: FontWeight.bold),
    descTextAlign: TextAlign.start,
    animationDuration: Duration(milliseconds: 400),
    alertBorder: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(0.0),
      side: BorderSide(
        color: Colors.grey,
      ),
    ),
    titleStyle: TextStyle(
      color: Colors.red,
    ),
    alertAlignment: Alignment.center,
  );
  TextEditingController? username;
  TextEditingController? password;

  LoginRepository _loginRepository = new LoginRepository();

  Future _handleLogin() async {
    // getHTTP
    // var response =
    //     await ApiBaseHelper().getHTTP('${BASE_URL}/options/exception');
    // print(response);
    try {
      final response = await _loginRepository.login(
          username!.text, password!.text, null, null);
      print(response);
      // RouteHelper.pushWidget(
      //   context,
      //   HomePage(),
      //   replaceRoot: false,
      // );
      Get.to(HomePage(), transition: Transition.leftToRight);
    } catch (e) {
      // ale
      Alert(
        context: context,
        type: AlertType.error,
        title: "แจ้งเตือน",
        desc: "เข้าสู่ระบบไม่สำเร็จ",
        buttons: [
          DialogButton(
            child: Text(
              "ปิด",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () => Navigator.pop(context),
            width: 120,
          )
        ],
      ).show();
    }
  }

  Widget _buildUserTF() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text('UserName'),
          SizedBox(
            height: 10.0,
          ),
          TextFieldBuild(
            input: username,
            hintText: 'ชื่อผู้ใช้งาน',
            prefixIcon: Padding(
              padding: EdgeInsets.all(12),
              child: FaIcon(
                FontAwesomeIcons.user,
                color: Colors.white,
              ),
            ),
          )
        ],
      );

  Widget _buildPasswordTF() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text('Password'),
          SizedBox(
            height: 10.0,
          ),
          TextFieldBuild(
            input: password,
            scureText: true,
            inputType: TextInputType.visiblePassword,
            labelText: 'รหัสผ่าน',
            hintText: 'รหัสผ่าน',
            prefixIcon: Icon(
              Icons.password_outlined,
              color: Colors.white,
            ),
          ),
        ],
      );

  Widget _buildButton() => Container(
        padding: EdgeInsets.symmetric(vertical: 25.0),
        width: double.infinity,
        child: ElevatedButton(
          // icon: Icon(Icons.login),
          style: ElevatedButton.styleFrom(
            // textStyle: const TextStyle(fontSize: 20),
            // onPrimary: Colors.yellowAccent,
            elevation: 5.0,
            primary: Color(0xFFFFDE00),
            padding: EdgeInsets.all(15.0),
          ),
          child: Text(
            'เข้าสู่ระบบ',
            style: TextStyle(
              color: Colors.black,
              letterSpacing: 1.5,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'OpenSans',
            ),
          ),
          onPressed: () async {
            print('Login to page');

            // await _handleLogin();
            // RouteHelper.pushWidget(context, HomePage(), replaceRoot: false);
            // RouteHelper.pushWidget(context, HomePage(),
            //     replaceRoot: false, replaceCurrent: true);
            Get.to(HomePage(), transition: Transition.leftToRight);
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => HomePage(),
            //   ),
            // );
          },
        ),
      );

  Widget _buildBottomSheetRow(
    BuildContext context,
    IconData icon,
    String text,
  ) =>
      InkWell(
        onTap: () {},
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16),
              child: Icon(
                icon,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(width: 8),
            Text(text),
          ],
        ),
      );

  // Widget dialogInfo() {
  //   // Alert(
  //   //   context: context,
  //   //   style: alertStyle,
  //   //   // type: AlertType.info,
  //   //   title: "RFLUTTER ALERT",
  //   //   desc: "Flutter is more awesome with RFlutter Alert.",
  //   //   buttons: [
  //   //     DialogButton(
  //   //       child: Text(
  //   //         "ปิด",
  //   //         style: TextStyle(color: Colors.white, fontSize: 20),
  //   //       ),
  //   //       onPressed: () => Navigator.pop(context),
  //   //       color: Color.fromRGBO(0, 179, 134, 1.0),
  //   //       radius: BorderRadius.circular(0.0),
  //   //     ),
  //   //     // ElevatedButton(onPressed: ()=>{}, icon: Icons.share, label: '',);
  //   //     DialogButton(
  //   //       child: Text(
  //   //         "แชร์",
  //   //         style: TextStyle(color: Colors.white, fontSize: 20),
  //   //       ),
  //   //       onPressed: () => Navigator.pop(context),
  //   //       color: Color.fromRGBO(0, 179, 134, 1.0),
  //   //       radius: BorderRadius.circular(0.0),
  //   //     ),
  //   //   ],
  //   // ).show();
  // }

  @override
  void initState() {
    super.initState();
    username = TextEditingController();
    password = TextEditingController();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeRight
    ]);
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
    return Scaffold(
      // appBar: AppBar(
      //   // title: Text(
      //   //   'login',
      //   // ),
      //   actions: [],
      // ),
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Color(0xff0066CC),
          ),
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(
                horizontal: 40.0,
                vertical: 120.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/iel-logo.png',
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  _buildUserTF(),
                  _buildPasswordTF(),
                  _buildButton(),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Share info');
                      // dialogInfo();
                      // showBottomSheet(
                      //   context: context,
                      //   builder: (context) => Wrap(
                      //     children: [
                      //       _buildBottomSheetRow(context, Icons.share, 'Share'),
                      //       _buildBottomSheetRow(
                      //           context, Icons.link, 'Get link'),
                      //       _buildBottomSheetRow(
                      //           context, Icons.edit, 'Edit Name'),
                      //       _buildBottomSheetRow(
                      //           context, Icons.delete, 'Delete collection'),
                      //     ],
                      //   ),
                      // );
                    },
                    child: Text(
                      'INFO',
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
