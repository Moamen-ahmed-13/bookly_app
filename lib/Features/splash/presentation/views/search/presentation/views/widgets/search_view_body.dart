import 'package:bookly_app/Features/splash/presentation/views/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:bookly_app/Features/splash/presentation/views/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(height: 20),
          Text(
            "Search Results:",
            style: Styles.textStyle18,
          ),
          SizedBox(height: 12),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
