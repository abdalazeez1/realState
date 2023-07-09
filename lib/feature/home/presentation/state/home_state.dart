part of 'home_bloc.dart';

@immutable
class HomeState {
  final PageState<PostModel> postHome;

  const HomeState({
    this.postHome = const PageState.init(),
  });

  HomeState copyWith({
    PageState<PostModel>? postHome,
  }) =>
      HomeState(
        postHome: postHome ?? this.postHome,
      );
}
