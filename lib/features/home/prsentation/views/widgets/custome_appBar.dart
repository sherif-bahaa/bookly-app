import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class CustomeAppbar extends StatelessWidget {
  const CustomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 0),
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
