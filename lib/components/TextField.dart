import 'package:flutter/material.dart';
import 'package:imot/utilities/contstants.dart';

class TextFieldBuild extends StatelessWidget {
  final String hintText;
  final Widget prefixIcon;
  final TextInputType inputType;
  final bool scureText;
  final int maxLength;
  final String labelText;
  const TextFieldBuild(
      {Key key,
      this.labelText,
      this.maxLength,
      this.scureText = false,
      this.inputType,
      this.hintText,
      this.prefixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: kBoxDecorationStyle,
      height: 60.0,
      child: TextField(
        textAlign: TextAlign.left,
        maxLength: maxLength,
        obscureText: this.scureText,
        keyboardType: this.inputType ?? TextInputType.text,
        style: TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(
            top: 14.0,
          ),
          prefixIcon: this.prefixIcon,
          // labelStyle: ,
          // labelText: labelText,
          // labelStyle: kLabelStyle,
          hintText: hintText,
          hintStyle: kHintTextStyle,
        ),
      ),
    );
  }
}
