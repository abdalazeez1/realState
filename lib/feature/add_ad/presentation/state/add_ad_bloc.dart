import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../common/app_widget/reactive_text_field.dart';

part 'add_ad_event.dart';

part 'add_ad_state.dart';

@injectable
class AddAdBloc extends Bloc<AddAdEvent, AddAdState> {
  AddAdBloc() : super(AddAdInitial()) {
    on<AddAdEvent>((event, emit) {
      // TODO: implement event handler
    });
  }

  var formGroup = FormGroup({
   ///dropdown
    FormGroupKey.city: FormControl<String>(validators: [Validators.required]),
    FormGroupKey.floor: FormControl<String>(validators: [Validators.required]),
    FormGroupKey.storeHouse: FormControl<String>(validators: [Validators.required]),
    FormGroupKey.section: FormControl<String>(validators: [Validators.required]),
    FormGroupKey.rooms: FormControl<String>(validators: [Validators.required]),
    FormGroupKey.swimmingPool: FormControl<String>(validators: [Validators.required]),
    FormGroupKey.realStateType: FormControl<String>(validators: [Validators.required]),
    FormGroupKey.garden: FormControl<String>(validators: [Validators.required]),

    ///text field
    FormGroupKey.title: FormControl<String>(validators: [Validators.required]),
    FormGroupKey.description: FormControl<String>(validators: [Validators.required]),
    FormGroupKey.price: FormControl<String>(validators: [Validators.required]),
    FormGroupKey.size: FormControl<String>(validators: [Validators.required]),

    ///segmented
    FormGroupKey.adType: FormControl<int?>(validators: [Validators.required]),
    FormGroupKey.direction: FormControl<Set<int>?>(validators: [Validators.required]),
    FormGroupKey.specification: FormControl<Set<int>?>(validators: [Validators.required]),

  });
}
