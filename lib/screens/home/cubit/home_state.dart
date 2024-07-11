part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeChangeLanguageState extends HomeState {}

class HomeCarouselChanged extends HomeState {}

class HomeErrorState extends HomeState {
  final Exception error;

  HomeErrorState(this.error);
}
