import 'package:bookly_app/Features/splash/presentation/views/Home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/Features/splash/presentation/views/Home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CustomAppBar(),
        FeaturedBooksListView(),
        SizedBox(
          height: 50,
          child: Text(
            "Best Seller",
            style: Styles.titleMedium,
          ),
        )
      ]),
    );
  }
}
