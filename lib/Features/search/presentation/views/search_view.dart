import 'package:bookly_app/Features/search/presentation/views/widget/search_view_body.dart';
import 'package:bookly_app/core/model/book_model/book_model.dart';
import 'package:flutter/material.dart';

class SearchViews extends StatelessWidget {
  final List<BookModel> books;
  const SearchViews({super.key,required this.books});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: SearchViewBody(books: books,)),
    );
  }
}
