import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:bookly_app/core/utils/helper.dart';
import 'package:flutter/material.dart';

class BestsellerItems extends StatelessWidget {
  const BestsellerItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: Helper.getResponsiveHeight(context, height: 150),
          width: Helper.getResponsiveWidth(context, width: 100),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AssetsData.testimage),
              fit: BoxFit.fill,
            ),
          ),
        ),
        SizedBox(width: Helper.getResponsiveWidth(context, width: 30)),
        Column(children: [Text("data")]),
      ],
    );
  }
}
