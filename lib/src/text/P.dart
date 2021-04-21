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
  final isLoading;
  final Function() onClick;

  P({
    this.color,
    this.bgColor,
    this.margin,
    this.padding,
    this.onClick,
    this.fontSize,
    this.fontWeight,
    this.isLoading = false,
    @required this.text,
  });
 
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
      isLoading: isLoading,
    );
  }
}
