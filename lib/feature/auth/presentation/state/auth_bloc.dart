import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:realstate/common/constant/params.dart';
import 'package:realstate/common/network/page_state/bloc_status.dart';
import 'package:realstate/common/network/page_state/page_state.dart';
import 'package:realstate/common/network/result.dart';

import '../../../../common/app_widget/reactive_text_field.dart';
import '../../application/facade.dart';

part 'auth_event.dart';

part 'auth_state.dart';

@singleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthFacade authFaced;

  AuthBloc(this.authFaced) : super(const AuthState()) {
    on<LoginAuth>(loginEvent);
    on<SignUpAuth>(signUpEvent);
    on<VerifyRegisterAuth>(verifyRegisterEvent);
  }

  Future loginEvent(LoginAuth event, Emitter emit) async {
    emit(state.copyWith(loginStatus: const BlocStatus.loading()));
    final result = await authFaced.login(paramsWrapper: ParamsWrapper(signInForm.rawValue));
    switch (result) {
      case Success(value: final data):
        emit(state.copyWith(loginStatus: const BlocStatus.success()));
      case Failure(exception: final exception, message: final message):
        emit(state.copyWith(loginStatus: BlocStatus.fail(error: message)));
    }
  }

  Future signUpEvent(SignUpAuth event, Emitter emit) async {
    emit(state.copyWith(signUpStatus: const BlocStatus.loading()));
    final result = await authFaced.register(paramsWrapper: ParamsWrapper(signUpForm.rawValue));
    switch (result) {
      case Success(value: final data):
        emit(state.copyWith(signUpStatus: const BlocStatus.success()));
      case Failure(exception: final exception, message: final message):
        emit(state.copyWith(signUpStatus: BlocStatus.fail(error: message)));
    }
  }
  Future verifyRegisterEvent(VerifyRegisterAuth event, Emitter emit) async {
    emit(state.copyWith(verifyRegisterStatus: const BlocStatus.loading()));
    final result = await authFaced.verifyRegister(paramsWrapper: ParamsWrapper({"code":event.code}));
    switch (result) {
      case Success(value: final data):
        emit(state.copyWith(verifyRegisterStatus: const BlocStatus.success()));
      case Failure(exception: final exception, message: final message):
        emit(state.copyWith(verifyRegisterStatus: BlocStatus.fail(error: message)));
    }
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
  });
  final signUpForm = FormGroup({
    FormGroupKey.firstName: FormControl<String>(validators: [Validators.required, Validators.email]),
    FormGroupKey.lastName: FormControl<String>(validators: [Validators.required, Validators.email]),
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
