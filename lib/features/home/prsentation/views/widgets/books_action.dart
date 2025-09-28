import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_buttom.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          Expanded(
            child: CustomButtom(
              style: Styles.textStyle18.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              onPressed: () {},
              text: '19.99€',
              backgroundColor: Colors.white,
            ),
          ),
          Expanded(
            child: CustomButtom(
              style: Styles.textStyle18.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              onPressed: () async {
                final Uri url = Uri.parse(book.volumeInfo.previewLink!);
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                }
              },
              text: 'Free preview',
              backgroundColor: Color(0xFFEF8262),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
