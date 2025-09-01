
import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Row(
        children: [
          Image.asset(AssetsData.logo, height: 18),
          Spacer(),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
    );
  }
}