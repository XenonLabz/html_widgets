import 'dart:ui';

import 'package:flutter/material.dart';

class HtmlImage extends StatelessWidget {
  final String src;
  final double height, width;
  final BoxFit fit;
  HtmlImage({
    @required this.src,
    this.width,
    this.height,
    this.fit
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: (src.contains('http'))?
        Image.network(src,height: height,width: width):
        Image.asset(src,height: height,width: width,),
    );
  }
}
