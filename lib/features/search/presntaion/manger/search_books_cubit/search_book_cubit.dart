import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_book_state.dart';

class SearchBookCubit extends Cubit<SearchBookState> {
  SearchBookCubit(this.searchRepo) : super(SearchBookInitial());
  final SearchRepo searchRepo;
Future<void> featchSearchBooks( {required String category}) async {
    emit(SearchBookLoading());
    var respons = await searchRepo.fetchSearchBook(
      category: category,
    );
    respons.fold(
      (failur) {
        emit(SearchBookFailure(errorMessage: failur.message));
      },
      (books) {
        emit(SearchBookSuccess(books: books));
      },
    );
  }
  
}
