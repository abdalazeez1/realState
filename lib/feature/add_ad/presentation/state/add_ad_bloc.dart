import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_ad_event.dart';
part 'add_ad_state.dart';

class AddAdBloc extends Bloc<AddAdEvent, AddAdState> {
  AddAdBloc() : super(AddAdInitial()) {
    on<AddAdEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
