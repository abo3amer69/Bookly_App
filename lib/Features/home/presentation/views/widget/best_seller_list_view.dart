import 'package:bookly_app/Features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/best_seller_list_view_item.dart';
import 'package:bookly_app/core/model/book_model/book_model.dart';
import 'package:bookly_app/core/widget/custom_error_widget.dart';
import 'package:bookly_app/core/widget/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  final List<BookModel> books;
  const BestSellerListView({super.key,required this.books});

  @override
  Widget build(BuildContext context) {
    print(books.length);
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BookListViewItem(
                  bookModel: books[index],
                ),
              );
            },
          );
        // } else if (state is NewestBooksFailure) {
        //   return CustomErrorWidget(errMessage: state.errMessage);
        // } else {
        //   return const CustomLoadingIndicator();
        // }
      },
    );
  }
}
