import 'package:bookly_app/Features/splash/presentation/views/Home/presentation/views/widgets/custum_list_view_item.dart';
import 'package:bookly_app/Features/splash/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/splash/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSecion extends StatelessWidget {
  const BookDetailsSecion({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: width * .2, right: 30),
          child: const FeaturedListViewItem(),
        ),
        Text(
          'The Jungle Book',
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 1,
        ),
        Text(
          'Rudyard Kipling',
          style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              color: const Color.fromARGB(115, 201, 201, 201)),
        ),
        const SizedBox(
          height: 10,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 35,
        ),
        const BooksAction(),
      ],
    );
  }
}
