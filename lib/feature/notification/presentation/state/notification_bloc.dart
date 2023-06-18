import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'notification_event.dart';
part 'notification_state.dart';
@injectable
class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  NotificationBloc() : super(NotificationInitial()) {
    on<NotificationEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
