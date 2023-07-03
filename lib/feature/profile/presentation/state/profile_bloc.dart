import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:realstate/common/network/page_state/page_state.dart';
import 'package:realstate/feature/profile/application/facade.dart';

import '../../../../common/app_widget/reactive_text_field.dart';
import '../../../../common/network/result.dart';
import '../../infrastructure/model/user.dart';

part 'profile_event.dart';
part 'profile_state.dart';
@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileFacade profileFacade ;
  ProfileBloc(this.profileFacade) : super(ProfileState()) {
    on<GetProfile>(loginEvent);
  }

  Future loginEvent(ProfileEvent event, Emitter emit) async {
      emit(state.copyWith(profileStatus: PageState.loading()));
      final result = await profileFacade.profile( );
      switch (result) {
        case Success(value: final data):
          emit(state.copyWith(profileStatus: PageState.loaded(data: data.data)));
        case Failure(exception: final exception, message: final message):
          emit(state.copyWith(profileStatus: PageState.error(exception: exception, error: message??"")));
      }
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
