import 'package:bookly_app/Features/splash/presentation/views/Home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/Features/splash/presentation/views/Home/presentation/views/widgets/custum_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23.0),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.only(left: width * .2, right: 30),
            child: const FeaturedListViewItem(),
          ),
        ],
      ),
    );
  }
}
