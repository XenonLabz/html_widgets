import 'package:flutter/material.dart';

class H1 extends StatelessWidget {
  final String text;
  final Color color;
  final Color bgColor;
  final num fontSize;
  final num fontWeight;
  final num margin;
  final num padding;
  final Function() callBack;

  H1({
    this.color,
    this.bgColor,
    this.margin,
    this.padding,
    this.callBack,
    this.fontSize,
    this.fontWeight,
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
      padding: EdgeInsets.all(margin.toDouble()),
      child: Container(
        decoration: BoxDecoration(
          color: bgColor,
        ),
        child: Padding(
          padding: EdgeInsets.all(padding.toDouble()),
          child: GestureDetector(
            onTap: callBack,
            child: Text(
              text,
              style: TextStyle(
                color: color,
                fontSize:
                    fontSize != null ? fontSize.toDouble() : 46.0 / density,
                fontWeight: _fontWeight[
                    fontWeight != null ? ((fontWeight % 100) - 1) : 8],
                letterSpacing: 1.5,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
