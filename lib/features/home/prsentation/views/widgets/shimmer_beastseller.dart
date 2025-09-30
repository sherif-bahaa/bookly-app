import 'package:bookly_app/core/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class ShimmerBeastseller extends StatelessWidget {
  const ShimmerBeastseller({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer(
        duration: Duration(seconds: 5), //Default value
        interval: Duration(seconds: 3), //Default value: Duration(seconds: 0)
        color: Colors.white, //Default value
        colorOpacity: 0.5, //Default value
        enabled: true, //Default value
        direction: ShimmerDirection.fromLTRB(), //Default Value
        child: SizedBox(
          height: Helper.getResponsiveHeight(context, height: 900),
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    width: 100,
                    height: 200,
                    color: const Color.fromARGB(255, 213, 211, 211),
                    
                  ),
                  title: Container(
                    width: double.infinity,
                    height: 20,
                    color: Colors.grey,
                  ),
                  subtitle: Container(
                    width: 100,
                    height: 20,
                    color: Colors.grey,
                  ),
                );
              }),
        ));
  }
}
