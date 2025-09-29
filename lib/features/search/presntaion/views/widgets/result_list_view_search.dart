import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/prsentation/views/widgets/bestseller_items.dart';
import 'package:bookly_app/features/home/prsentation/views/widgets/view_error_widget.dart';
import 'package:bookly_app/features/search/presntaion/manger/search_books_cubit/search_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultListViewSearch extends StatelessWidget {
  const ResultListViewSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBookCubit, SearchBookState>(
      builder: (context, state) {
        if (state is SearchBookFailure) {
          return ViewErrorWidget(errMessage: state.errorMessage);
        }
        if (state is SearchBookSuccess) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BestsellerItems(
                  book: state.books[index],
                ),
              );
            },
          );
        }
        return Center(
            child: Text(
          "Search for a book!",
          style: Styles.textStyle20,
        ));
      },
    );
  }
}
