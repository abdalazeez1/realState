part of 'auth_bloc.dart';

@immutable
class AuthState {
  final BlocStatus loginStatus;
  final BlocStatus signUpStatus;
  final BlocStatus verifyRegisterStatus;

  const AuthState({
    this.verifyRegisterStatus = const BlocStatus.initial(),
    this.loginStatus = const BlocStatus.initial(),
    this.signUpStatus = const BlocStatus.initial(),
  });

  AuthState copyWith({
    BlocStatus? loginStatus,
    BlocStatus? verifyRegisterStatus,
    BlocStatus? signUpStatus,
  }) =>
      AuthState(
        loginStatus: loginStatus ?? this.loginStatus,
        verifyRegisterStatus: verifyRegisterStatus ?? this.verifyRegisterStatus,
        signUpStatus: signUpStatus ?? this.signUpStatus,
      );
}
