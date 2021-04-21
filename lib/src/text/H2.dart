import 'package:flutter/material.dart';
import 'package:html_widgets/src/text/HeadingBuilder.dart';

class H2 extends StatelessWidget {
  final String text;
  final Color color;
  final Color bgColor;
  final num fontSize;
  final num fontWeight;
  final num margin;
  final num padding;
  final bool isLoading;
  final Function() onClick;

  H2({
    this.color,
    this.bgColor,
    this.margin,
    this.padding,
    this.onClick,
    this.fontSize,
    this.fontWeight,
    @required this.text,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return HeadingBuilder(
      text: text,
      defaultFontSize: 24.0,
      defaultFontWeight: 6,
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
