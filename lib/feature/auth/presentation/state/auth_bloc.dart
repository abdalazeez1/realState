import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../common/app_widget/reactive_text_field.dart';
import '../../application/facade.dart';

part 'auth_event.dart';

part 'auth_state.dart';

@singleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthFacade authFaced;

  AuthBloc(this.authFaced) : super(AuthState()) {
    on<LoginAuth>(loginEvent);
    on<SignUpAuth>(signUpEvent);
  }

  Future loginEvent(LoginAuth event, Emitter emit) async {

  }
  Future signUpEvent(SignUpAuth event, Emitter emit) async {

  }

  @disposeMethod
  Future dispose() async {
    signInForm.reset();
  }

  /// MARK Form
  final signInForm = FormGroup({
    FormGroupKey.email: FormControl<String>(validators: [Validators.required, Validators.email]),
    FormGroupKey.password: FormControl<String>(validators: [
      Validators.required,
      Validators.minLength(6),
    ]),
    FormGroupKey.submitNewPassword: FormControl<String>(),
  }, validators: [
    Validators.mustMatch(FormGroupKey.password, FormGroupKey.submitNewPassword)
  ]);
  final signUpForm = FormGroup({
    FormGroupKey.email: FormControl<String>(validators: [Validators.required, Validators.email]),
    FormGroupKey.phone:
        FormControl<String>(validators: [Validators.required, Validators.number, Validators.minLength(7)]),
    FormGroupKey.password: FormControl<String>(validators: [
      Validators.required,
      Validators.minLength(6),
    ]),
    FormGroupKey.submitNewPassword: FormControl<String>(),
  }, validators: [
    Validators.mustMatch(FormGroupKey.password, FormGroupKey.submitNewPassword)
  ]);
}
