import 'package:bookly_app/Features/splash/presentation/views/Home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/Features/splash/presentation/views/Home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:bookly_app/consatants.dart';
import 'package:bookly_app/core/utils/assets.dart';
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
            style: Styles.textStyle18,
          ),
        ),
        BestSellerListViewItem(),
      ]),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetsData.testImage),
          )),
        ),
      ),
    );
    ;
  }
}
