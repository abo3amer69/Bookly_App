import 'package:bloc/bloc.dart';

import 'package:bookly_app/Features/search/data/repos/search_repo.dart';
import 'package:bookly_app/Features/search/data/repos/search_repo_imp.dart';
import 'package:bookly_app/core/model/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this.searchrepo, {required SearchRepoImpl searchRepo})
      : super(SearchBooksInitial());

  final SearchRepo searchrepo;
  Future<void> ftchSearchBooks(
      {required String booksearch, required List<BookModel> books}) async {
    // emit(SearchBooksLoading());
    // var result = await searchrepo.fetchSearchBooks(booksearch: booksearch);
    // result.fold((failure) {
    //   emit(SearchBooksFailure(failure.errMessage));
    // }, (books) {F
    //   emit(SearchBooksSuccess(books));
    //    books.contains()
    // });
    emit(SearchBooksLoading());
    List<BookModel> searchBooks = books.where((book) {
      // am
      return book.volumeInfo.title!
          .toLowerCase()
          .contains(booksearch.toLowerCase());
    }).toList();
    emit(SearchBooksSuccess(searchBooks));
  }
}
