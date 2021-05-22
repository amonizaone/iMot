import 'package:flutter/material.dart';
import 'package:imot/components/app_bar.dart';
import 'package:imot/components/drawer_manu.dart';

class MyJob extends StatefulWidget {
  static const String routeName = '/job';

  MyJob({Key key}) : super(key: key);

  @override
  _MyJobState createState() => _MyJobState();
}

class _MyJobState extends State<MyJob> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FlexibleAppBar(),
      drawer: DrawMenu(),
      body: Container(
        child: Text('My Jobs'),
      ),
    );
  }
}
