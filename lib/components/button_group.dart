import 'package:flutter/material.dart';
import 'package:imot/utilities/contstants.dart';

class ButtonGroup extends StatelessWidget {
  static const double _radius = 10.0;
  static const double _outerPadding = 2.0;

  final int? current;
  final List<String>? titles;
  final ValueChanged<int>? onTab;
  final Color? color;
  final Color? secondaryColor;

  ButtonGroup({
    Key? key,
    this.titles,
    this.onTab,
    int? current,
    Color? color,
    Color? secondaryColor,
  })  : assert(titles != null),
        current = current ?? 0,
        color = color ?? Colors.blue,
        secondaryColor = secondaryColor ?? Colors.white,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(_radius),
      child: Padding(
        padding: const EdgeInsets.all(_outerPadding),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(_radius - _outerPadding),
          child: IntrinsicHeight(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: _buttonList(),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buttonList() {
    final buttons = <Widget>[];
    for (int i = 0; i < titles!.length; i++) {
      buttons.add(_button(titles![i], i));
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
    if (index == this.current)
      return _activeButton(title);
    else
      return _inActiveButton(title, index);
  }

  Widget _activeButton(String title) => Expanded(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            // disabledMouseCursor: secondaryColor,
            primary: Colors.white,
            onPrimary: secondaryColor,
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
          ),
          // ButtonStyle(
          //   tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          // textStyle: TextStyle(color: Colors.white),
          // shape: Mater
          //  const RoundedRectangleBorder(
          //   borderRadius: BorderRadius.zero,
          // ),
          // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          // disabledColor: secondaryColor,
          // disabledTextColor: color,
          // shape: const RoundedRectangleBorder(
          //   borderRadius: BorderRadius.zero,
          // ),
          // ),
          child: Text(title),
          onPressed: null,
        ),
      );

  Widget _inActiveButton(String title, int index) => Expanded(
        child: ElevatedButton(
          // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          // color: Colors.transparent,
          // textColor: Colors.white,
          style: ElevatedButton.styleFrom(
            primary: Colors.transparent,
            // onPrimary: secondaryColor,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            textStyle: TextStyle(
              // fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
          ),
          child: Text(title),
          onPressed: () {
            if (onTab != null) onTab!(index);
          },
        ),
      );
}
