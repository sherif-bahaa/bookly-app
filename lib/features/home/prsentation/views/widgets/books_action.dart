import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

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
              onPressed: () {},
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
