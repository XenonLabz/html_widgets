import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class HtmlImage extends StatelessWidget {
  final String src;
  final double height, width;
  final String size;
  final double margin;
  final Function() onClick;

  /// HtmlImage widget corresponds in creating img tag.
  HtmlImage({
    /// source of the image.
    @required this.src,

    /// width of the image.
    this.width,

    /// height of the image.
    this.height,

    /// size of the image like css styles.
    this.size,

    /// margin of the image.
    this.margin,

    /// On Click function that can be executed on tapping the image.
    this.onClick,
  });

  final List _fitTypes = [
    'contain',
    'cover',
    'fill',
    'fitHeight',
    'fitWidth',
    'none',
    'scaleDown'
  ];

  final List _fitValues = [
    BoxFit.contain,
    BoxFit.cover,
    BoxFit.fill,
    BoxFit.fitHeight,
    BoxFit.fitWidth,
    BoxFit.none,
    BoxFit.scaleDown
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(margin != null ? margin : 0),
      child: GestureDetector(
        onTap: onClick,
        child: (src.contains('http'))
            ? Image.network(
                src,
                height: height,
                width: width,
                fit: size != null
                    ? _fitValues[_fitTypes.indexOf(size)]
                    : _fitValues[0],
                loadingBuilder: (BuildContext context, Widget child,
                    ImageChunkEvent loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Shimmer.fromColors(
                    highlightColor: Colors.white,
                    baseColor: Colors.grey[300],
                    period: Duration(milliseconds: 800),
                    child: Container(
                      height: height != null ? height : 300,
                      width: MediaQuery.of(context).size.width * 1.0,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  );
                },
              )
            : Image.asset(src,
                height: height,
                width: width,
                fit: size != null
                    ? _fitValues[_fitTypes.indexOf(size)]
                    : _fitValues[0]),
      ),
    );
  }
}
