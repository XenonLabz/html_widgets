import 'package:flutter/material.dart';

class HtmlImage extends StatelessWidget {
  final String src;
  final double height, width;
  final String size;
  final double margin;
  final Function() onClick;


  HtmlImage({
    @required this.src,
    this.width,
    this.height,
    this.size,
    this.margin,
    this.onClick,
  });


  final List _fitTypes = ['contain','cover','fill','fitHeight','fitWidth','none','scaleDown'];  

  final List _fitValues = [BoxFit.contain, BoxFit.cover, BoxFit.fill, BoxFit.fitHeight, BoxFit.fitWidth,BoxFit.none, BoxFit.scaleDown];

  @override
  Widget build(BuildContext context) {
    return Container(
        margin:  EdgeInsets.all(margin != null ? margin : 0),
        child: GestureDetector(
          onTap: onClick,
          child:(src.contains('http'))?
            Image.network(
             src,
             height: height,
             width: width,
             fit: size != null ? _fitValues[_fitTypes.indexOf(size)] : _fitValues[0],
            ):
            Image.asset(
             src,
             height: height,
             width: width,
             fit: size != null ? _fitValues[_fitTypes.indexOf(size)] : _fitValues[0]
            ),
    ));
  }
}
