 import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl  implements SearchRepo{
  final ApiServices apiServices;

  SearchRepoImpl({required this.apiServices});
  
  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchBook({required String category})async {
      
    try {
      final data=await apiServices.get(
        'volumes?q=$category&Sorting =relevance&Filtering=free-ebooks',
      );
      
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}