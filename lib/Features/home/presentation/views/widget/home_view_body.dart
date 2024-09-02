import 'package:bookly_app/Features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/best_seller_list_view.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/best_seller_list_view_item.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/custom_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/featured_list_view.dart';
import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/model/book_model/book_model.dart';
import 'package:bookly_app/core/utilis/assets.dart';
import 'package:bookly_app/core/utilis/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_book_image.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<BookModel> books = [];
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          books = state.books;
        }
        return CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: CustomAppBar(books: books),
                  ),
                  const featureBoxListView(),
                  const SizedBox(
                    height: 50,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      'Newest Books',
                      style: Styles.textStyle18,
                    ),
                  ),
                ],
              ),
            ),
            SliverFillRemaining(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: BestSellerListView(books: books),
              ),
            )
          ],
        );
      },
    );
  }
}
