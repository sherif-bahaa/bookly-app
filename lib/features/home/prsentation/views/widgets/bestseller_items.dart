import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/helper.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestsellerItems extends StatelessWidget {
  const BestsellerItems(
      {super.key, required this.imageurl, required this.title, required this.author});
  final String imageurl;
  final String title;
  final String author;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.bookDetailsView);
      },
      child: Row(
        children: [
          Container(
            height: Helper.getResponsiveHeight(context, height: 150),
            width: Helper.getResponsiveWidth(context, width: 100),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imageurl),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(width: Helper.getResponsiveWidth(context, width: 30)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: Helper.getResponsiveWidth(context, width: 200),
                child: Text(
                  title,
                  style: Styles.textStyle20.copyWith(color: Colors.white),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(height: Helper.getResponsiveHeight(context, height: 3)),
              Text("J.K. Rowling", style: Styles.textStyle14),
              SizedBox(height: Helper.getResponsiveHeight(context, height: 3)),
              Row(
                children: [
                  Text("19.99 €", style: Styles.textStyle20),
                  SizedBox(
                    width: Helper.getResponsiveWidth(context, width: 30),
                  ),
                  Icon(Icons.star, color: Colors.amber, size: 20),
                  SizedBox(width: Helper.getResponsiveWidth(context, width: 5)),
                  Text("4.8", style: Styles.textStyle16),
                  SizedBox(width: Helper.getResponsiveWidth(context, width: 5)),
                  Text("(2052)", style: Styles.textStyle14),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
