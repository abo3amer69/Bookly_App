import 'package:bookly_app/Features/search/data/model/book_Search/book.search.dart';
import 'package:bookly_app/Features/search/data/repos/search_repo.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/utilis/api_services.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiService apiService;

  SearchRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookSearch>>> fetchSearchBooks(
      {required String booklist})async{
          try {
  var data=await    apiService.get(endPoint: 'volumes?Filtering=free-ebooks&q=programming');

  List<BookSearch>booksSearch=[];
  for (var item in data['items']) {
    booksSearch.add(BookSearch.fromJson(item));
    
  }
  return right(booksSearch);
} catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioException(e),
        );
      }
      return left(
        ServerFailure(e.toString()),
      );
    }
  }
}