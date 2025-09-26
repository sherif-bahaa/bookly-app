import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomCardImage extends StatelessWidget {
  const CustomCardImage({super.key, required this.imageurl});
  final String imageurl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(16)),
      child: AspectRatio(
        aspectRatio: 2.8 / 4,
        child: CachedNetworkImage(
          imageUrl: imageurl,
          fit: BoxFit.fill,
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      ),
    );
  }
}
