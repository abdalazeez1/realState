import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'search_event.dart';
part 'search_state.dart';
@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchInitial()) {
    on<SearchEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
