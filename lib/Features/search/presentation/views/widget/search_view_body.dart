import 'package:bookly_app/Features/home/presentation/views/widget/best_seller_list_view_item.dart';
import 'package:bookly_app/Features/search/presentation/views/widget/custom_search_text_field.dart';
import 'package:bookly_app/Features/search/presentation/views/widget/search_result_list_view.dart';
import 'package:bookly_app/core/model/book_model/book_model.dart';
import 'package:bookly_app/core/utilis/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchViewBody extends StatelessWidget {
  final List<BookModel> books;
  const SearchViewBody({super.key,required this.books});
  

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSearchTextField(books:books),
        const SizedBox(
          height: 16,
        ),
        const Text(
          'Search Result',
          style: Styles.textStyle18,
        ),
        const SizedBox(
          height: 16,
        ),
         Expanded(child: SearchResultListView(books:books)),
      ],
    );
  }
}
