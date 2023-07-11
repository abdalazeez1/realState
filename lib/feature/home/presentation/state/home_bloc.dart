import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:realstate/common/network/page_state/page_state.dart';

import '../../application/facade.dart';
import 'package:realstate/common/network/result.dart';

import '../../infrastructure/model/post_model/post_model.dart';
part 'home_event.dart';
part 'home_state.dart';
@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeFacade homeFacade;
  HomeBloc(this.homeFacade) : super(HomeState()) {
    on<GetAllPostHome>(_getAllPostHome);
  }

  FutureOr<void> _getAllPostHome(GetAllPostHome event, Emitter<HomeState> emit)async {
    emit(state.copyWith(postHome: const PageState.loading()));
    final result=await homeFacade.getPosts();
    switch(result) {
      case Success(value:final data):
        emit(state.copyWith(postHome: PageState.loaded(data: data.data)));
      case Failure(exception: final exception, message: final message):
        emit(state.copyWith(postHome: PageState.error(exception: exception, error: message??'some thing went wrong')));
    }

  }
}
