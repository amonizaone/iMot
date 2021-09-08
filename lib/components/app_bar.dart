import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:imot/components/NamedIcon.dart';
import 'package:imot/pages/notification_page.dart';

class FlexibleAppBar extends StatefulWidget implements PreferredSizeWidget {
  final bool showTile;
  final String? title;
  final bool showIconBack;
  final bool titleCentered;
  FlexibleAppBar({
    Key? key,
    this.showTile = false,
    this.title,
    this.titleCentered = true,
    this.showIconBack = false,
  })  : preferredSize = Size.fromHeight(80),
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
      // leading: ,
      leading: this.widget.showIconBack
          ? IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
            )
          : null,
      actions: [
        // IconButton(
        //   onPressed: () {
        //     //
        //     RouteHelper.pushWidget(context, NotificationPage());
        //   },
        //   icon: Icon(Icons.notifications_outlined),
        //   color: Colors.yellowAccent,
        // ),
        NamedIcon(
          text: 'Inbox',
          iconData: Icons.notifications,
          notificationCount: 11,
          onTap: () {
            // RouteHelper.pushWidget(context, NotificationPage());
            Get.to(NotificationPage(), transition: Transition.leftToRight);
          },
        ),
      ],
      centerTitle: this.widget.titleCentered,
      title: this.widget.showTile
          ? Text(this.widget.title!)
          : Container(
              padding: EdgeInsets.all(40.0),
              child: Image.asset(
                'assets/images/iel-logo.png',
                fit: BoxFit.cover,
              ),
            ),
    );
  }
}
