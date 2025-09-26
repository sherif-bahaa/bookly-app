import 'package:bookly_app/features/home/prsentation/manger/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/home/prsentation/views/widgets/bestseller_items.dart';
import 'package:bookly_app/features/home/prsentation/views/widgets/view_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestsellerItemsListView extends StatelessWidget {
  const BestsellerItemsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: BestsellerItems(
                book: state.books[index],
                ),
              );
            },
          );
        } else if (state is NewestBooksFailure) {
          return ViewErrorWidget(errMessage: state.errMessage);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
