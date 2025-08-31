import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class SplashViweBody extends StatelessWidget {
  const SplashViweBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Image.asset(AssetsData.logo));
  }
}
