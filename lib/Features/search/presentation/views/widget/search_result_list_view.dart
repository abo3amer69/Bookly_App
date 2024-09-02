import 'package:bookly_app/Features/search/data/repos/search_repo.dart';
import 'package:bookly_app/Features/search/data/repos/search_repo_imp.dart';
import 'package:bookly_app/Features/search/presentation/manager/Search_books_cubit/search_books_cubit.dart';
import 'package:bookly_app/core/model/book_model/book_model.dart';
import 'package:bookly_app/core/utilis/api_services.dart';
import 'package:bookly_app/core/widget/custom_error_widget.dart';
import 'package:bookly_app/core/widget/custom_loading_indicator.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  final List<BookModel> books;
  const SearchResultListView({super.key,required this.books});

  @override
  Widget build(BuildContext context) {
    List<BookModel>? searchedBooks = [];
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
      builder: (context, state) {
        if(state is SearchBooksSuccess){
          searchedBooks = state.bookssearch;
        }
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: searchedBooks == null ?books.length:searchedBooks?.length,
            itemBuilder: (context, index) {
              return  Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                //  child: BookListViewItem(),
                child: Text(searchedBooks ==null ? books[index].volumeInfo.title.toString(): searchedBooks![index].volumeInfo.title.toString()),
              );
            },
          );
      
      },
    );
  }
}
