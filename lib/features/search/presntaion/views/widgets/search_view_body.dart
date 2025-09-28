import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/search/presntaion/manger/search_books_cubit/search_book_cubit.dart';
import 'package:bookly_app/features/search/presntaion/views/widgets/custom_text_field.dart';
import 'package:bookly_app/features/search/presntaion/views/widgets/result_list_view_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
            controller: TextEditingController(),
            onChanged: (value) {
              BlocProvider.of<SearchBookCubit>(context).featchSearchBooks(
        category: value);

            },
          ),
          SizedBox(height: 16),
          Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey, width: 2)),
            ),
            child: Text("search results", style: Styles.textStyle18),
          ),
          SizedBox(height: 16),
          Expanded(child: ResultListViewSearch(
            
          )),
        ],
      ),
    );
  }
}
