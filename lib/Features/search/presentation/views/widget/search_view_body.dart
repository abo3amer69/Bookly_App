import 'package:bookly_app/Features/home/presentation/views/widget/best_seller_list_view_item.dart';
import 'package:bookly_app/Features/search/presentation/views/widget/custom_search_text_field.dart';
import 'package:bookly_app/core/utilis/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSearchTextField(),
        SizedBox(
          height: 16,
        ),
        Text(
          'Search Result',
          style: Styles.textStyle18,
        ),
        SizedBox(
          height: 16,
        ),
        Expanded(child: SearchResultListView()),
      ],
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          //child: BookListViewItem(),
          child: Text('data'),
        );
      },
    );
  }
}
