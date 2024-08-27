import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/search/data/model/book/book.search.dart';
import 'package:bookly_app/Features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this.searchrepo) : super(SearchBooksInitial());

  final SearchRepo searchrepo;
  Future<void> ftchSearchBooks({required String booklist})async{
    emit(SearchBooksLoading());
  var result=await  searchrepo.fetchSearchBooks(booklist: booklist);
      result.fold((failure) {
      emit(SearchBooksFailure(failure.errMessage));
    }, (books) {
      emit(SearchBooksSuccess(books));
    });
  }
}




























