import 'package:flutter/material.dart';
import 'package:flutter_base/util/util.dart';

// ignore: must_be_immutable
class LoadingIndicatorWidget extends StatelessWidget {

  bool isTransparentBackground;
  LoadingIndicatorWidget({this.isTransparentBackground = false});

  @override
  Widget build(BuildContext context) => Container(
      color: hexToColor("#000000", alphaChannel: isTransparentBackground ? "00" :"80"),
      child: const Center(
        child: CircularProgressIndicator(),
      ));
}
