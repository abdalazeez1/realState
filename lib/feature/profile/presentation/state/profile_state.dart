part of 'profile_bloc.dart';

@immutable
 class ProfileState {
  final PageState<Profile> profileStatus ;

  const ProfileState({this.profileStatus = const PageState.init()});


  ProfileState copyWith({ PageState<Profile>? profileStatus})=>ProfileState(
    profileStatus: profileStatus ?? this.profileStatus
  );
}

