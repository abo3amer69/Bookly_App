import 'package:bookly_app/Features/home/presentation/views/widget/similar_books_list_view.dart';
import 'package:bookly_app/core/utilis/styles.dart';
import 'package:flutter/material.dart';

class SimilsrBooksSection extends StatelessWidget {
  const SimilsrBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const similarBooksListView(),
      ],
    );
  }
}
