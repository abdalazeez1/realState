import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../common/app_widget/reactive_text_field.dart';

part 'profile_event.dart';
part 'profile_state.dart';
@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileInitial()) {
    on<ProfileEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
final formGroup =   FormGroup({
  FormGroupKey.firstName: FormControl<String>(validators: [Validators.required]),
  FormGroupKey.lastName: FormControl<String>(validators: [Validators.required]),
  FormGroupKey.email: FormControl<String>(validators: [Validators.required]),
  FormGroupKey.phone: FormControl<String>(validators: [Validators.required]),
  FormGroupKey.country: FormControl<String>(validators: [Validators.required]),
  FormGroupKey.gender: FormControl<String>(validators: [Validators.required]),
});
}
