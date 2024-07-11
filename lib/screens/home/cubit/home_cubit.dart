import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:korean_shop/generated/l10n.dart';
import 'package:intl/intl.dart';

import '../../../shared/models/exeptions/went_wrong.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  int _carouselIndex = 0;

  int get carouselIndex => _carouselIndex;

  String get locale => Intl.getCurrentLocale();

  set setCarouselIndex(int i) {
    _carouselIndex = i;
    emit(HomeCarouselChanged());
  }

  Future init() async {
    try {
      WidgetsFlutterBinding.ensureInitialized();
    } on Exception catch (e) {
      emit(HomeErrorState(e));
    } catch (e) {
      emit(HomeErrorState(WentWrongExeption()));
    }
  }

  void changeLanguage(String newLang) {
    S.load(Locale(newLang));

    emit(HomeChangeLanguageState());
  }
}
