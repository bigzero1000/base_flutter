import 'package:flutter/foundation.dart';

class AppException implements Exception {
  final int code;
  final String message;

  AppException(this.code, this.message);

  AppException.unknown({this.code = unknownErrorCode, this.message = "Unknown error"});

  AppException.withMessage({this.code = unknownErrorCode, @required this.message});

  AppException.withIdentifiedErrorCode({this.code = identifiedErrorCode, @required this.message});

  AppException.noInternet({this.code = networkErrorCode, @required this.message});

  static const int unknownErrorCode = 7000;
  static const int identifiedErrorCode = 8000;
  static const int networkErrorCode = 9000;

  @override
  String toString() => "Error code: $code, message: $message ";
}
