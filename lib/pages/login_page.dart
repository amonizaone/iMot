import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:imot/components/TextField.dart';
import 'package:imot/pages/home_page.dart';
// import 'package:imot/pages/batter_info.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Widget _buildUserTF() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text('UserName'),
          SizedBox(
            height: 10.0,
          ),
          TextFieldBuild(
            hintText: 'Enter your Usermame',
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
            scureText: true,
            inputType: TextInputType.visiblePassword,
            labelText: 'Password',
            hintText: 'Enter your Password',
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
                fontFamily: 'OpenSans'),
          ),
          onPressed: () => {
            print('Login to page'),
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            )
          },
        ),
      );
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
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
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
