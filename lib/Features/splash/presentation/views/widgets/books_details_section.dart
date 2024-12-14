import 'package:bookly_app/Features/splash/presentation/views/Home/presentation/views/widgets/custum_book_item.dart';
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
          padding: EdgeInsets.only(left: width * .2, right: width * .2),
          child: const CustumBookImage(
            imageUrl:
                'data:image/jpeg;base64,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',
          ),
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
          rating: 4,
          count: 250,
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
