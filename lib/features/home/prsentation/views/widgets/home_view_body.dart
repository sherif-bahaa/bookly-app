import 'package:bookly_app/core/utils/helper.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/prsentation/views/widgets/bestseller_items_list_view.dart';
import 'package:bookly_app/features/home/prsentation/views/widgets/custome_appbar.dart';
import 'package:bookly_app/features/home/prsentation/views/widgets/custome_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomeAppbar(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: CustomListView(),
              ),
              SizedBox(height: Helper.getResponsiveHeight(context, height: 20)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Best seller",
                  style: Styles.textStyle18.copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: BestsellerItemsListView(),
          ),
        ),
      ],
    );
  }
}
