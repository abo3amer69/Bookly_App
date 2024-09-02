import 'package:bookly_app/Features/search/presentation/manager/Search_books_cubit/search_books_cubit.dart';
import 'package:bookly_app/Features/search/presentation/views/widget/outlined_input_border.dart';
import 'package:bookly_app/core/model/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  final List<BookModel> books;
  const CustomSearchTextField({super.key, required this.books});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
      builder: (context, state) {
        return TextField(
          onChanged: (value) {
            BlocProvider.of<SearchBooksCubit>(context)
                .ftchSearchBooks(booksearch: value, books: books);
            // Navigator.pop(context);
          },
          decoration: InputDecoration(
            enabledBorder: buildOutLineInputBorder(),
            focusedBorder: buildOutLineInputBorder(),
            hintText: 'Search',
            suffixIcon: IconButton(
              onPressed: () {},
              icon: const Opacity(
                opacity: .8,
                child: Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  size: 22,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
