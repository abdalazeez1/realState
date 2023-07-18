part of 'home_bloc.dart';

@immutable
class HomeState {
  final PageState<List<PostModel>> postHome;
  final PageState<List<CategoryModel>> categoriesHome;
  final bool selectAll;

  const HomeState({
    this.postHome = const PageState.init(),
    this.categoriesHome = const PageState.init(),
    this.selectAll = true,
  });

  HomeState copyWith({
    PageState<List<PostModel>>? postHome,
    PageState<List<CategoryModel>>? categoriesHome,
    final bool? selectAll,
  }) =>
      HomeState(
        postHome: postHome ?? this.postHome,
        categoriesHome: categoriesHome ?? this.categoriesHome,
        selectAll: selectAll ?? this.selectAll,
      );
}
