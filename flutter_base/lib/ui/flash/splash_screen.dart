import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/theme/images.dart';
import 'package:flutter_base/util/translation.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(image: AppImages.pikloader, width: 50, height: 50, fit: BoxFit.contain),
            Text(
              Translations.of(context).text('splash_text'),
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
