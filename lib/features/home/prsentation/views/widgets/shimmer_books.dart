import 'package:bookly_app/core/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class ShimmerBooks extends StatelessWidget {
  const ShimmerBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer(
      duration: Duration(seconds: 3), //Default value
      interval: Duration(seconds: 5), //Default value: Duration(seconds: 0)
      color: Colors.white, //Default value
      colorOpacity: 0, //Default value
      enabled: true, //Default value
      direction: ShimmerDirection.fromLTRB(), //Default Value
      child: SizedBox(
        height: Helper.getResponsiveHeight(context, height: 200),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color.fromARGB(255, 213, 211, 211),
              ),
              margin: EdgeInsets.symmetric(horizontal: 8),
              width: Helper.getResponsiveWidth(context, width: 100),
              height: Helper.getResponsiveHeight(context, height: 120),
              //color: const Color.fromARGB(255, 213, 211, 211),
            );
          },
          scrollDirection: Axis.horizontal,
          itemCount: 10,
        ),
      ),
    );
  }
}
