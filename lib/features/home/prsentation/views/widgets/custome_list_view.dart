import 'package:bookly_app/core/utils/helper.dart';
import 'package:bookly_app/features/home/prsentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/prsentation/views/widgets/custome_card_image.dart';
import 'package:bookly_app/features/home/prsentation/views/widgets/view_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: Helper.getResponsiveHeight(context, height: 180),
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CustomCardImage(
                  imageurl:
                      state.books[index].volumeInfo.imageLinks.smallThumbnail,
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return ViewErrorWidget(errMessage: state.errMessage);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
