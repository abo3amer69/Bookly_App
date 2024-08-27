import 'package:bookly_app/Features/search/data/model/book/book.search.dart';

import 'package:bookly_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<BookSearch>>> fetchSearchBooks(
      {required String booklist});
}
