import 'package:bookly_app/core/utils/helper.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/prsentation/views/widgets/books_action.dart';
import 'package:bookly_app/features/home/prsentation/views/widgets/custome_card_image.dart';
import 'package:bookly_app/features/home/prsentation/views/widgets/custome_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

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
            Navigator.pop(context);
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
            child: CustomCardImage(),
          ),
          SizedBox(height: Helper.getResponsiveHeight(context, height: 33)),
          const Text('The Jungle Book', style: Styles.textStyle30),
          SizedBox(height: Helper.getResponsiveHeight(context, height: 6)),
          Opacity(
            opacity: 0.8,
            child: Text(
              'Rudyard Kipling',
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
              Text("(2052)", style: Styles.textStyle14),
            ],
          ),
          SizedBox(height: Helper.getResponsiveHeight(context, height: 20)),
          BooksAction(),
          SizedBox(height: Helper.getResponsiveHeight(context, height: 20)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('you can also like', style: Styles.textStyle16),
            ),
          ),
          SizedBox(height: Helper.getResponsiveHeight(context, height: 20)),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 25),
              child: CustomListView(),
            ),
          ),
          SizedBox(height: Helper.getResponsiveHeight(context, height: 20)),
        ],
      ),
    );
  }
}
