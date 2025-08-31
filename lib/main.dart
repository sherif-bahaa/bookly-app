import 'package:bookly_app/consts.dart';
import 'package:bookly_app/features/splash/persentation/views/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kprimarycolor),
      debugShowCheckedModeBanner: false,

      home: Splash(),
    );
  }
}
