import 'package:bookly_app/core/utils/helper.dart';
import 'package:bookly_app/features/home/prsentation/manger/simeller_books_cubit/simeller_books_cubit.dart';
import 'package:bookly_app/features/home/prsentation/views/widgets/custome_card_image.dart';
import 'package:bookly_app/features/home/prsentation/views/widgets/shimmer_books.dart';
import 'package:bookly_app/features/home/prsentation/views/widgets/view_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimellerListView extends StatelessWidget {
  const SimellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimellerBooksCubit, SimellerBooksState>(
      builder: (context, state) {
        if (state is SimellerBooksSuccess) {
          return SizedBox(
            height: Helper.getResponsiveHeight(context, height: 180),
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 13),
                  child: CustomCardImage(
                    imageurl:
                        state.books[index].volumeInfo.imageLinks.smallThumbnail,
                  ),
                );
              },
            ),
          );
        } else if (state is SimellerBooksFailure) {
          return ViewErrorWidget(errMessage: state.errormsessage);
        } else {
          return Center(child: ShimmerBooks());
        }
      },
    );
  }
}
