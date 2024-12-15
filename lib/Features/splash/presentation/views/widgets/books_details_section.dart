import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/splash/presentation/views/Home/presentation/views/widgets/custum_book_item.dart';
import 'package:bookly_app/Features/splash/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/splash/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSecion extends StatelessWidget {
  const BookDetailsSecion({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: width * .2, right: width * .2),
          child: CustumBookImage(
              imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? ''),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          bookModel.volumeInfo.title ?? "",
          style: Styles.textStyle30
              .copyWith(fontWeight: FontWeight.bold, fontSize: 25),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 1,
        ),
        Text(
          bookModel.volumeInfo.publisher ?? '',
          style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              color: const Color.fromARGB(115, 201, 201, 201)),
        ),
        const SizedBox(
          height: 10,
        ),
        BookRating(
          rating: bookModel.volumeInfo.averageRating ?? 0,
          count: bookModel.volumeInfo.ratingsCount ?? 0,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 35,
        ),
         BooksAction(
          bookModel: bookModel,
         ),
      ],
    );
  }
}
