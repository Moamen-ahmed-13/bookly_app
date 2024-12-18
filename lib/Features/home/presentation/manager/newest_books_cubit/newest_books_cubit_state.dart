part of 'newest_books_cubit_cubit.dart';

sealed class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

final class NewestBooksCubitInitial extends NewestBooksState {}

final class NewestBooksCubitLoading extends NewestBooksState {}

final class NewestBooksCubitFailure extends NewestBooksState {
  final String errMessage;

  const NewestBooksCubitFailure(this.errMessage);
}

final class NewestBooksCubitSuccess extends NewestBooksState {
  final List<BookModel> books;

  const NewestBooksCubitSuccess(this.books);
}
