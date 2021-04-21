import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'dart:math';

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
  final bool isLoading;
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
    this.isLoading = false
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

  double randomWidth({double min = 0.30, double max = 0.80}){
    return Random().nextDouble() * (max - min + 1) + min ;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(margin != null ? margin.toDouble() : 0.0),
      child:isLoading ? Shimmer.fromColors(
              highlightColor: Colors.white,
              baseColor: Colors.grey[300],
              period: Duration(milliseconds: 800),
              child: Container(
                height:  fontSize != null ? fontSize.toDouble() : defaultFontSize,
                width: MediaQuery.of(context).size.width * randomWidth(),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
            )
        : Container(
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
