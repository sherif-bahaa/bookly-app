import 'package:bookly_app/core/utils/helper.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/prsentation/views/widgets/bestseller_items.dart';
import 'package:bookly_app/features/home/prsentation/views/widgets/custome_appbar.dart';
import 'package:bookly_app/features/home/prsentation/views/widgets/custome_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomeAppbar(),
          CustomListView(),
          SizedBox(height: Helper.getResponsiveHeight(context, height: 40)),
          Text(
            "Best seller",
            style: Styles.textStyle18.copyWith(color: Colors.white),
          ),
          SizedBox(height: Helper.getResponsiveHeight(context, height: 20)),
          BestsellerItems(),
        ],
      ),
    );
  }
}
