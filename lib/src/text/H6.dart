import 'package:flutter/material.dart';
import 'package:html_widgets/src/text/HeadingBuilder.dart';

class H6 extends StatelessWidget {
  final String text;
  final Color color;
  final Color bgColor;
  final num fontSize;
  final num fontWeight;
  final num margin;
  final num padding;
  final Function() callBack;

  H6({
    this.color,
    this.bgColor,
    this.margin,
    this.padding,
    this.callBack,
    this.fontSize,
    this.fontWeight,
    @required this.text,
  });
  //TODO: Need to change default values
  @override
  Widget build(BuildContext context) {
    return HeadingBuilder(
      text: text,
      defaultFontSize: 11.2,
      defaultFontWeight: 700,
      color: color,
      bgColor: bgColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
      padding: padding,
      margin: margin,
      callBack: callBack,
    );
  }
}
