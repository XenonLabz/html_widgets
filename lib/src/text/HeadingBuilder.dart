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
  final String textAlign;
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
    this.isLoading = false,
    this.textAlign = 'left',
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

  final Map _textAlign = {
    'center': TextAlign.center,
    'left' :TextAlign.left,
    'right' :TextAlign.right,
    'start' :TextAlign.start,
    'end': TextAlign.end,
    'justify':TextAlign.justify,
  };

  double density = WidgetsBinding.instance.window.devicePixelRatio;

  double randomWidth({double min = 0.30, double max = 0.80}){
    return Random().nextDouble() * (max - min + 1) + min ;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(margin != null ? margin.toDouble() : 5.0),
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
          width: MediaQuery.of(context).size.width * 1.0,
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
              textAlign: _textAlign[textAlign],
            ),
          ),
        ),
      ),
    );
  }
}
