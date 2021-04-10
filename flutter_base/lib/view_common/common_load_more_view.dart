import 'package:flutter/material.dart';
import 'package:flutter_base/util/translation.dart';
import 'package:flutter_base/view_common/common_button.dart';

class CommonLoadMoreView extends StatelessWidget {
  final GestureTapCallback onPressed;
  final EdgeInsets padding;
  final Color backgroundColor;
  final EdgeInsets margin;
  final double fontSize;

  const CommonLoadMoreView(
      {this.backgroundColor = Colors.transparent,
      this.margin = EdgeInsets.zero,
      this.padding = const EdgeInsets.symmetric(vertical: 20),
      this.fontSize = 16,
      @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      color: backgroundColor,
      child: Center(
          child: AppButtonWidget(
        width: 123,
        height: 34,
        cornerRadius: 17,
        title: Translations.of(context).text("common_load_more"),
        fontSize: fontSize,
        onPressed: onPressed,
      )),
    );
  }
}
