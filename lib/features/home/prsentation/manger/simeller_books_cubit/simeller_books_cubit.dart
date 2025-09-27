import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'simeller_books_state.dart';

class SimellerBooksCubit extends Cubit<SimellerBooksState> {
  SimellerBooksCubit(this.homeRepo) : super(SimellerBooksInitial());
  final HomeRepo homeRepo;
  Future<void> featchSmillertBooks( {required String category}) async {
    emit(SimellerBooksLoading());
    var respons = await homeRepo.fetchsemilerBooks(
      category: category,
    );
    respons.fold(
      (failur) {
        emit(SimellerBooksFailure(errormsessage: failur.message));
      },
      (books) {
        emit(SimellerBooksSuccess(books: books));
      },
    );
  }
}
