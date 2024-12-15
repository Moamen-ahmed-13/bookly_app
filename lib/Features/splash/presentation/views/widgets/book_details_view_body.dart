import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/splash/presentation/views/Home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/Features/splash/presentation/views/widgets/books_details_section.dart';
import 'package:bookly_app/Features/splash/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23.0),
                child: Column(
                  children: [
                    const CustomBookDetailsAppBar(),
                    BookDetailsSecion(bookModel: bookModel,),
                  ],
                ),
              ),
              const SimilarBooksSection(),
            ],
          ),
        )
      ],
    );
  }
}
