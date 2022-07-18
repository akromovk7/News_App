import 'package:bloc/bloc.dart';
import 'package:news_app/screens/state/main_state.dart';

class MainCubit extends Cubit<MainState>{
  MainCubit() : super(HomeState());

  changeState(MainState state) {
    emit(state);
  }
}
