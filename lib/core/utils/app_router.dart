import 'package:bookly_app/Features/splash/presentation/views/Home/presentation/views/home_view.dart';
import 'package:bookly_app/Features/splash/presentation/views/Home/presentation/views/widgets/book_details_view.dart';
import 'package:bookly_app/Features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final kSplashView = '/';
  static final kHomeView = '/homeView';
  static final kBookDetailsview = '/bookDetailsview';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kSplashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsview,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
