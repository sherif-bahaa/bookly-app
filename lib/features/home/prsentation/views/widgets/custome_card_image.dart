import 'package:flutter/material.dart';

class CustomCardImage extends StatelessWidget {
  const CustomCardImage({super.key, required this.imageurl});
  final String imageurl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      child: Padding(
        padding: const EdgeInsets.only(right: 13),
        child: Container(
          //width: Helper.getResponsiveWidth(context, width: 140),
          //height: Helper.getResponsiveHeight(context, height: 150),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: NetworkImage(imageurl),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
