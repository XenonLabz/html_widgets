import 'package:flutter/material.dart';
import 'package:html_widgets/src/text/HeadingBuilder.dart';

class P extends StatelessWidget {
  final String text;
  final Color color;
  final Color bgColor;
  final num fontSize;
  final num fontWeight;
  final num margin;
  final num padding;
  final Function() onClick;

  P({
    this.color,
    this.bgColor,
    this.margin,
    this.padding,
    this.onClick,
    this.fontSize,
    this.fontWeight,
    @required this.text,
  });
  //TODO: Need to change default values
  @override
  Widget build(BuildContext context) {
    return HeadingBuilder(
      text: text,
      defaultFontSize: 16.0,
      defaultFontWeight: 5,
      color: color,
      bgColor: bgColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
      padding: padding,
      margin: margin,
      callBack: onClick,
    );
  }
}
