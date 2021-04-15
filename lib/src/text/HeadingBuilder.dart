import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HeadingBuilder extends StatelessWidget {
  final String text;
  final Color color;
  final Color bgColor;
  final num fontSize;
  final num fontWeight;
  final num defaultFontSize;
  final num defaultFontWeight;
  final num margin;
  final num padding;
  final Function() callBack;

  HeadingBuilder({
    this.color,
    this.bgColor,
    this.margin,
    this.padding,
    this.callBack,
    this.fontSize,
    this.fontWeight,
    @required this.defaultFontSize,
    @required this.defaultFontWeight,
    @required this.text,
  });

  final List _fontWeight = [
    FontWeight.w100,
    FontWeight.w200,
    FontWeight.w300,
    FontWeight.w400,
    FontWeight.w500,
    FontWeight.w600,
    FontWeight.w700,
    FontWeight.w800,
    FontWeight.w900
  ];

  double density = WidgetsBinding.instance.window.devicePixelRatio;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(margin != null ? margin.toDouble() : 0.0),
      child: Container(
        decoration: BoxDecoration(
          color: bgColor,
        ),
        child: Padding(
          padding: EdgeInsets.all(padding != null ? padding.toDouble() : 0.0),
          child: GestureDetector(
            onTap: callBack,
            child: Text(
              text,
              style: TextStyle(
                color: color,
                fontSize:
                    fontSize != null ? fontSize.toDouble() : defaultFontSize,
                fontWeight: _fontWeight[fontWeight != null
                    ? ((fontWeight ~/ 100) - 1)
                    : defaultFontWeight],
                letterSpacing: 1.5,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
