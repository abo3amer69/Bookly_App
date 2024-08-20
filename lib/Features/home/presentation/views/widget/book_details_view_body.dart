import 'package:bookly_app/Features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/books_action.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/books_details_section.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/custom_book_details_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/similar_books_list_view.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/similsr_books_section.dart';
import 'package:bookly_app/core/utilis/styles.dart';
import 'package:bookly_app/core/widget/custom_button.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding:const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
               const CustomBookDetailsAppBar(),
                BookDetailsSection(
                  book: bookModel,
                ),
               const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
              const  SimilsrBooksSection(),
               const SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
