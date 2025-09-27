import 'package:bookly_app/core/utils/helper.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/prsentation/views/widgets/books_action.dart';
import 'package:bookly_app/features/home/prsentation/views/widgets/custome_card_image.dart';
import 'package:bookly_app/features/home/prsentation/views/widgets/simeller_list_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({
    super.key,
    required this.book,
  });
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            GoRouter.of(context).pop();
          },
        ),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: Helper.getResponsiveHeight(context, height: 10)),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Helper.getResponsiveWidth(context, width: 105),
            ),
            child: CustomCardImage(
              imageurl: book.volumeInfo.imageLinks.smallThumbnail,
            ),
          ),
          SizedBox(height: Helper.getResponsiveHeight(context, height: 33)),
          Center(
              child: Text(
            maxLines: 2,
            book.volumeInfo.title!,
            style: Styles.textStyle30,
            textAlign: TextAlign.center,
          )),
          SizedBox(height: Helper.getResponsiveHeight(context, height: 6)),
          Opacity(
            opacity: 0.8,
            child: Text(
              book.volumeInfo.authors![0],
              style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic),
            ),
          ),
          SizedBox(height: Helper.getResponsiveHeight(context, height: 20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, color: Colors.amber, size: 20),
              SizedBox(width: Helper.getResponsiveWidth(context, width: 5)),
              Text("4.8", style: Styles.textStyle16),
              SizedBox(width: Helper.getResponsiveWidth(context, width: 5)),
              Text("(${book.volumeInfo.pageCount})", style: Styles.textStyle14),
            ],
          ),
          SizedBox(height: Helper.getResponsiveHeight(context, height: 20)),
          BooksAction(
            book: book,
          ),
          SizedBox(height: Helper.getResponsiveHeight(context, height: 20)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('you can also like', style: Styles.textStyle16),
            ),
          ),
          SizedBox(height: Helper.getResponsiveHeight(context, height: 14)),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 25),
              child: SimellerListView(),
            ),
          ),
          SizedBox(height: Helper.getResponsiveHeight(context, height: 30)),
        ],
      ),
    );
  }
}
