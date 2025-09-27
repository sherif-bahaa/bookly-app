import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/helper.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestsellerItems extends StatelessWidget {
  const BestsellerItems({
    super.key,
    required this.book,
  });
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.bookDetailsView, extra: book);
      },
      child: Row(
        children: [
          Container(
            height: Helper.getResponsiveHeight(context, height: 150),
            width: Helper.getResponsiveWidth(context, width: 100),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(book.volumeInfo.imageLinks.smallThumbnail),
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
                  book.volumeInfo.title!,
                  style: Styles.textStyle20.copyWith(color: Colors.white),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(height: Helper.getResponsiveHeight(context, height: 3)),
              SizedBox(
                width: Helper.getResponsiveWidth(context, width: 200),
                child: Text(
                  book.volumeInfo.authors![0],
                  style: Styles.textStyle14,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(height: Helper.getResponsiveHeight(context, height: 3)),
              Row(
                children: [
                  Text("Free", style: Styles.textStyle20),
                  SizedBox(
                    width: Helper.getResponsiveWidth(context, width: 30),
                  ),
                  Icon(Icons.star, color: Colors.amber, size: 20),
                  SizedBox(width: Helper.getResponsiveWidth(context, width: 5)),
                  Text("4.3", style: Styles.textStyle16),
                  SizedBox(width: Helper.getResponsiveWidth(context, width: 5)),
                  Text("(${book.volumeInfo.pageCount.toString()})",
                      style: Styles.textStyle14),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
