import 'package:flutter/material.dart';
import 'package:flutter_base/theme/colors.dart';

final ThemeData appDefaultTheme = ThemeData(
    fontFamily: 'GenShinGothic',
    textTheme: const TextTheme(
        headline1: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: AppColors.appCommonText),
        headline2: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: AppColors.appCommonText),
        headline3: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
            color: AppColors.appCommonText),
        headline4: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
            color: AppColors.appCommonText),
        headline5: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
            color: AppColors.appCommonText),
        headline6: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: AppColors.appCommonText),
        bodyText1: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
            color: AppColors.appCommonText),
        bodyText2: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
            color: AppColors.appCommonText),
        subtitle1: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
            color: AppColors.appCommonText),
        subtitle2: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
            color: AppColors.appCommonText),
        button: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
            color: AppColors.appCommonText),
        caption: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
            color: AppColors.appCommonText)));

const boxDecorationRound8WhiteBg = BoxDecoration(
  borderRadius: BorderRadius.all(Radius.circular(8)),
  color: Colors.white,
);
