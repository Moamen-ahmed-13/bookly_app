import 'package:bookly_app/Features/splash/presentation/views/Home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/Features/splash/presentation/views/Home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:bookly_app/Features/splash/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: CustomAppBar(),
            ),
            FeaturedBooksListView(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: SizedBox(
                //height: 50,
                child: Text(
                  "Newest Books",
                  style: Styles.textStyle18,
                ),
              ),
            ),
            //BestSellerListViewItem(),
            BestSellerListView(),
          ]),
        ),
        /* SliverToBoxAdapter(
          child: BestSellerListView(),
        ) */
      ],
    );
  }
}
