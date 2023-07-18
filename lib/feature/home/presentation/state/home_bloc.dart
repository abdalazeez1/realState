import 'dart:async';
import 'package:collection/collection.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:realstate/common/network/page_state/page_state.dart';
import 'package:realstate/feature/home/infrastructure/model/category_model/category.dart';

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
    on<GetPostHomeOfCategory>(_onGetPostOfCategory);
    on<GetAllCategoriesHome>(_getAllCategoriesHome);
    on<SelectCategoryChip>(_onSelectCategoryChip);

  }

  FutureOr<void> _getAllPostHome(GetAllPostHome event, Emitter<HomeState> emit) async {
    emit(state.copyWith(postHome: const PageState.loading()));
    final result = await homeFacade.getPosts();
    switch (result) {
      case Success(value: final data):
        emit(state.copyWith(postHome: PageState.loaded(data: data.data)));
      case Failure(exception: final exception, message: final message):
        emit(
            state.copyWith(postHome: PageState.error(exception: exception, error: message ?? 'some thing went wrong')));
    }
  }


  FutureOr<void> _onGetPostOfCategory(GetPostHomeOfCategory event, Emitter<HomeState> emit) async{
    emit(state.copyWith(postHome: const PageState.loading()));
    //todo call another facade function when backend publish
    // final result = await homeFacade.getPostsOfCategories(event.id);
    final result = await homeFacade.getPosts();
    switch (result) {
      case Success(value: final data):
        emit(state.copyWith(postHome: PageState.loaded(data: data.data)));
      case Failure(exception: final exception, message: final message):
        emit(
            state.copyWith(postHome: PageState.error(exception: exception, error: message ?? 'some thing went wrong')));
    }

  }
  FutureOr<void> _getAllCategoriesHome(GetAllCategoriesHome event, Emitter<HomeState> emit) async {
    emit(state.copyWith(categoriesHome: PageState.loading()));
    final result = await homeFacade.getCategories();
    switch (result) {
      case Success(value: final data):
        emit(state.copyWith(selectAll: true,categoriesHome: PageState.loaded(data: data.data)));
      case Failure(exception: final exception, message: final message):
        emit(state.copyWith(
            categoriesHome: PageState.error(exception: exception, error: message ?? 'some thing went wrong')));
    }
  }

  FutureOr<void> _onSelectCategoryChip(SelectCategoryChip event, Emitter<HomeState> emit) {
    if (event.isAll) {
      emit(state.copyWith(categoriesHome:PageState.loaded(data:  (state.categoriesHome.getDataWhenSuccess ?? [])
          .map((e) => e.copyWith(isSelected: false))
          .toList()),selectAll: event.isAll));
      add(GetAllPostHome());
    } else {
      if (event.id != null) {
        emit(state.copyWith(categoriesHome:PageState.loaded(data:  (state.categoriesHome.getDataWhenSuccess ?? [])
            .map((e) => e.copyWith(isSelected: false))
            .toList())));
        emit(state.copyWith(
            selectAll: event.isAll,
            categoriesHome: PageState.loaded(
                data: (state.categoriesHome.getDataWhenSuccess ?? [])
                    .mapIndexed((index, element) =>
                element.id == event.id
                    ? element.copyWith(isSelected: true)
                    : element)
                    .toList())));
        add(GetPostHomeOfCategory(event.id!));
      }
    }
  }
}
