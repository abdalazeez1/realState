part of 'profile_bloc.dart';

@immutable
 class ProfileState {
  final PageState<User> profileStatus ;

  const ProfileState({this.profileStatus = const PageState.init()});


  ProfileState copyWith({ PageState<User>? profileStatus})=>ProfileState(
    profileStatus: profileStatus ?? this.profileStatus
  );
}

