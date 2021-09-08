import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:imot/components/TextField.dart';
import 'package:imot/components/button_group.dart';

class LoginPage1 extends StatefulWidget {
  LoginPage1({Key? key}) : super(key: key);

  @override
  _LoginPage1State createState() => _LoginPage1State();
}

class _LoginPage1State extends State<LoginPage1> {
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('ยินดีต้อนรับ'),
        actions: [
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              // mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Text('ยินดีต้อนรับ'),
                Image.asset(
                  'assets/images/iel-logo.png',
                  fit: BoxFit.cover,
                ),
                IconButton(
                  icon: Icon(Icons.language),
                  onPressed: () => {},
                ),
              ],
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: Material(
          // color: Color.fromRGBO(50, 75, 205, 1),
          // type: MaterialType.card,
          color: Theme.of(context).primaryColor,
          child: ListView(
            children: [],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'เข้าสู่ระบบ',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 26.0,
                  ),
                ),
              ),
            ),
            // Container(
            //   child: ButtonGroup(
            //     titles: [
            //       "ลูกค้าทั่วไป",
            //       "ลูกค้าองค์กร",
            //     ],
            //     current: current,
            //     onTab: (selected) {
            //       print(selected);
            //       setState(() {
            //         current = selected;
            //       });
            //     },
            //   ),
            // )
            ButtonGroup1(
              titles: [
                "ลูกค้าทั่วไป",
                "ลูกค้าองค์กร",
              ],
              current: current,
              onTab: (selected) {
                print(selected);
                setState(() {
                  current = selected;
                });
              },
            ),
            SizedBox(
              height: 10,
            ),
            TextFieldBuild(
              // input: password,
              scureText: true,
              inputType: TextInputType.text,
              labelText: 'ชื่อผู้ใช้งาน',
              hintText: 'ชื่อผู้ใช้งาน',
              prefixIcon: Padding(
                padding: EdgeInsets.all(12),
                child: FaIcon(
                  FontAwesomeIcons.user,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFieldBuild(
              // input: password,
              scureText: true,
              inputType: TextInputType.visiblePassword,
              labelText: 'รหัสผ่าน',
              hintText: 'รหัสผ่าน',
              prefixIcon: Icon(
                Icons.password_outlined,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ลืมรหัสผ่าน?',
                  style: TextStyle(
                      color: Colors.blue[800],
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 20,
                  width: 10,
                  child: VerticalDivider(
                    color: Colors.blue[800],
                    width: 5,
                    thickness: 2,
                  ),
                ),
                Text(
                  'ขอรับอีเมลยืนยันตัวตนอีกครั้ง',
                  style: TextStyle(
                      color: Colors.blue[800],
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 1,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue[800],
                  textStyle: TextStyle(
                    // fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'เข้าสู่ระบบ',
                  style: TextStyle(
                      // color: widget,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ButtonGroup1 extends StatelessWidget {
  final int current;
  final List<String> titles;
  final ValueChanged<int> onTab;
  final Color color;
  final Color secondaryColor;

  ButtonGroup1({
    Key? key,
    required this.titles,
    required this.onTab,
    int? current,
    Color? color,
    Color? secondaryColor,
  })  : current = current ?? 0,
        color = color ?? Colors.blue,
        secondaryColor = secondaryColor ?? Colors.white,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.all(3.5),
      // width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: _buttonList(),
        // children: [
        //   Expanded(
        //     child: InkWell(
        //       onTap: () {},
        //       child: Container(
        //         alignment: Alignment.center,
        //         decoration: BoxDecoration(
        //           color: Colors.white,
        //           borderRadius: BorderRadius.only(
        //             bottomLeft: Radius.circular(12),
        //             topLeft: Radius.circular(12),
        //           ),
        //         ),
        //         child: Text(
        //           "ลูกค้าทั่วไป",
        //           style: TextStyle(
        //             color: Colors.blue,
        //             fontSize: 17,
        //           ),
        //         ),
        //       ),
        //     ),
        //   ),
        //   Expanded(
        //     child: InkWell(
        //       onTap: () {},
        //       child: Container(
        //         alignment: Alignment.center,
        //         child: Text(
        //           "ลูกค้าองค์กร",
        //           style: TextStyle(color: Colors.white, fontSize: 17),
        //         ),
        //       ),
        //     ),
        //   ),
        //   // Padding(
        //   //   padding: EdgeInsets.symmetric(vertical: 5),
        //   //   child: Container(color: Colors.white, width: 2),
        //   // ),
        //   // Expanded(
        //   //   child: InkWell(
        //   //     onTap: () {},
        //   //     child: Container(
        //   //       alignment: Alignment.center,
        //   //       child: Text("Edit Profile",
        //   //           style:
        //   //               TextStyle(color: Colors.white, fontSize: 17)),
        //   //     ),
        //   //   ),
        //   // )
        // ],
      ),
    );
  }

  List<Widget> _buttonList() {
    final buttons = <Widget>[];
    for (int i = 0; i < titles.length; i++) {
      buttons.add(_button(titles[i], i));
      buttons.add(
        VerticalDivider(
          width: 1.0,
          color: (i == current || i + 1 == current) ? color : secondaryColor,
          thickness: 1.5,
          indent: 5.0,
          endIndent: 5.0,
        ),
      );
    }
    buttons.removeLast();
    return buttons;
  }

  Widget _button(String title, int index) {
    // if (index == this.current)
    return _activeButton(title, index);
    // else
    //   return _inActiveButton(title, index);
  }

  Widget _activeButton(String title, int index) {
    // print(index == this.current);
    bool active = index == this.current;
    return Expanded(
      child: InkWell(
        onTap: () {
          if (onTab != null) onTab(index);
        },
        child: Container(
          alignment: Alignment.center,
          decoration: active
              ? BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    topLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                )
              : null,
          child: Text(
            "$title",
            style: TextStyle(
              color: active ? Colors.blue : secondaryColor,
              fontSize: 17,
            ),
          ),
        ),
      ),
    );
  }
}
