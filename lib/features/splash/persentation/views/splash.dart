import 'package:bookly_app/features/splash/persentation/views/widgets/splash_viwe_body.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: const Text("splash view"))),
      body: SplashViweBody(),
    );
  }
}
