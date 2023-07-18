part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class GetAllPostHome extends HomeEvent{}
class GetPostHomeOfCategory extends HomeEvent{
  final int id;

  GetPostHomeOfCategory(this.id);
}
class GetAllCategoriesHome extends HomeEvent{}
class SelectCategoryChip extends HomeEvent{
  final int? id;
  final bool isAll;

  SelectCategoryChip({required this.isAll,this.id});
}

