part of 'simeller_books_cubit.dart';

abstract class SimellerBooksState extends Equatable {
  const SimellerBooksState();

  @override
  List<Object> get props => [];
}

class SimellerBooksInitial extends SimellerBooksState {}
class SimellerBooksFailure extends SimellerBooksState {
  final String errormsessage;

 const SimellerBooksFailure({required this.errormsessage});
}
class SimellerBooksSuccess extends SimellerBooksState {
  final List<BookModel> books;

 const SimellerBooksSuccess({required this.books});

}
class SimellerBooksLoading extends SimellerBooksState {}
