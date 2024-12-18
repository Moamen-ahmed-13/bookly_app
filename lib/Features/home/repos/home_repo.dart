import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchnewestBooks();
  Future<Either<Failure, List<BookModel>>> fetchfeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fetchsimilarBooks({required String category});
}
