
import 'package:bookly_app/Features/home/presentation/views/widget/custom_book_item.dart';
import 'package:flutter/material.dart';

class similarBooksListView extends StatelessWidget {
  const similarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CustomBookImage(),
          );
        },
      ),
    );
  }
}
