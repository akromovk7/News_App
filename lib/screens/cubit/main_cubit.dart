import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:news_app/screens/state/main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(HomeState());

  changeState(MainState state) {
    emit(state);
  }

  final List category = ["Healthy", "Technology", "Finance", "Arts", "Sports"];
  final List category2 = ["Filter","Healthy", "Technology", "Finance", "Arts", "Sports"];
  int current = 0;
  int current2 = 0;

  changeCurrent(int index) {
    current = index;
    emit(HomeState());
  }

  changeCurrent2(int index) {
    current2 = index;
    emit(SearchState());
  }
}
