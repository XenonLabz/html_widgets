import 'package:flutter/material.dart';
import 'package:html_widgets/src/text/HeadingBuilder.dart';

/// Heading 1 widget corresponds in creating H1 tag like text.
class H1 extends StatelessWidget {
  /// Text to be displayed.
  final String text;

  /// Color of the text.
  final Color color;

  /// Background Color of the text.
  final Color bgColor;

  /// Font Size of the text. Default value of 32.0 will be passed if not provided.
  final num fontSize;

  /// Font Weight of the text. Default value of 600 will be passed if not provided.
  final num fontWeight;

  /// Margin around the contianer holding the text.
  final num margin;

  /// Padding around the text.
  final num padding;

  /// Loading state bool. Default will be false. If set true shimmer will be shown.
  final bool isLoading;

  /// Aligning text. If not passed 'left' will be set.
  final String textAlign;

  /// On Click function that can be executed on tapping the text.
  final Function() onClick;

  H1({
    this.color,
    this.bgColor,
    this.margin,
    this.padding,
    this.onClick,
    this.fontSize,
    this.isLoading = false,
    this.fontWeight,
    this.textAlign,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return HeadingBuilder(
      text: text,
      defaultFontSize: 32.0,
      defaultFontWeight: 6,
      color: color,
      bgColor: bgColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
      padding: padding,
      margin: margin,
      callBack: onClick,
      isLoading: isLoading,
      textAlign: textAlign,
    );
  }
}
