import 'package:flutter/material.dart';

class FlexibleAppBar extends StatefulWidget implements PreferredSizeWidget {
  FlexibleAppBar({Key key})
      : preferredSize = Size.fromHeight(80),
        super(key: key);

  @override
  final Size preferredSize; // default is 56.0

  @override
  _FlexibleAppBarState createState() => _FlexibleAppBarState();
}

class _FlexibleAppBarState extends State<FlexibleAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80,
      actions: [
        IconButton(
          onPressed: () => {},
          icon: Icon(Icons.notifications_outlined),
          color: Colors.yellowAccent,
        )
      ],
      centerTitle: true,
      title: Container(
        padding: EdgeInsets.all(40.0),
        child: Image.asset(
          'assets/images/iel-logo.png',
          fit: BoxFit.cover,
        ),
      ),
    );
    ;
  }
}
