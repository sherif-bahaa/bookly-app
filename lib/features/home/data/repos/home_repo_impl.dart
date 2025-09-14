import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestsellerBooks() {
    // TODO: implement fetchBestsellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchBooks() {
    // TODO: implement fetchBooks
    throw UnimplementedError();
  }
}