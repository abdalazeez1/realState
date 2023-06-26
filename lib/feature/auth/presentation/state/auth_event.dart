part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class LoginAuth extends AuthEvent {
  final VoidCallback onSuccess ;

  LoginAuth({required this.onSuccess});
}

class SignUpAuth extends AuthEvent {}

class VerifyRegisterAuth extends AuthEvent {
  final String code ;

  VerifyRegisterAuth({required this.code});
}
