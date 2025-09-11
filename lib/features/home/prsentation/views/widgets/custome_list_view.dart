import 'package:bookly_app/core/utils/helper.dart';
import 'package:bookly_app/features/home/prsentation/views/widgets/custome_card_image.dart';
import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Helper.getResponsiveHeight(context, height: 200),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CustomCardImage();
        },
      ),
    );
  }
}
