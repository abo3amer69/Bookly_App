import 'package:bookly_app/Features/search/presentation/views/search_view.dart';
import 'package:bookly_app/core/model/book_model/book_model.dart';
import 'package:bookly_app/core/utilis/app_router.dart';
import 'package:bookly_app/core/utilis/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  final List<BookModel> books;
  const CustomAppBar({super.key, required this.books});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 40,
        bottom: 20,
      ),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 18,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              // GoRouter.of(context).push(AppRouter.KSearchView ,);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SearchViews(
                            books: books,
                          )));
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 22,
            ),
          ),
        ],
      ),
    );
  }
}
