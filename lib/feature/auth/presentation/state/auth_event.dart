part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class LoginAuth extends AuthEvent {}

class SignUpAuth extends AuthEvent {}

class VerifyRegisterAuth extends AuthEvent {
  final String code ;

  VerifyRegisterAuth({required this.code});
}
