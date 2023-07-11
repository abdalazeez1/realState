part of 'home_bloc.dart';

@immutable
class HomeState {
  final PageState<List<PostModel>> postHome;

  const HomeState({
    this.postHome = const PageState.init(),
  });

  HomeState copyWith({
    PageState<List<PostModel>>? postHome,
  }) =>
      HomeState(
        postHome: postHome ?? this.postHome,
      );
}
