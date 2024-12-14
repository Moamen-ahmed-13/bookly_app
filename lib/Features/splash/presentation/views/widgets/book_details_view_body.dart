import 'package:bookly_app/Features/splash/presentation/views/Home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/Features/splash/presentation/views/widgets/books_details_section.dart';
import 'package:bookly_app/Features/splash/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 23.0),
                child: Column(
                  children: [
                    CustomBookDetailsAppBar(),
                    BookDetailsSecion(),
                  ],
                ),
              ),
              SimilarBooksSection(),
            ],
          ),
        )
      ],
    );
  }
}
