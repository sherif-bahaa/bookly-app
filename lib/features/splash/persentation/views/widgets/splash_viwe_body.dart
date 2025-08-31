import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class SplashViweBody extends StatelessWidget {
  const SplashViweBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(height: 40),
        const Text(
          "Read free books",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
