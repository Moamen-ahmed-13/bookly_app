import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_cubit_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksCubitInitial());
  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksCubitLoading());
    var result = await homeRepo.fetchnewestBooks();
    result.fold(
      (failure) => emit(
        NewestBooksCubitFailure(failure.errorMsg),
      ),
      (success) => emit(
        NewestBooksCubitSuccess(success),
      ),
    );
  }
}
