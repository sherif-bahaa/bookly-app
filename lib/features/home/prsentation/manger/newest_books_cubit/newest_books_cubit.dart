import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;
  Future<void> featchNewestBooks() async {
    emit(NewestBooksLoading());
    var respons = await homeRepo.fetchBestsellerBooks();
    respons.fold(
      (failur) {
        emit(NewestBooksFailure(errMessage: failur.message));
      },
      (books) {
        emit(NewestBooksSuccess(books: books));
      },
    );
  }
}
