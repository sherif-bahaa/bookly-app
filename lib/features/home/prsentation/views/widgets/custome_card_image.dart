import 'package:bookly_app/core/utils/assets_data.dart';

import 'package:flutter/material.dart';

class CustomCardImage extends StatelessWidget {
  const CustomCardImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: Container(
          //width: Helper.getResponsiveWidth(context, width: 140),
          //height: Helper.getResponsiveHeight(context, height: 150),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AssetsData.testimage),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
