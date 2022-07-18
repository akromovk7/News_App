import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/screens/cubit/main_cubit.dart';
import 'package:news_app/screens/state/main_state.dart';
import 'package:news_app/screens/view/pages/detail_view.dart';
import 'package:news_app/screens/view/pages/home_view.dart';
import 'package:news_app/screens/view/pages/notify_view.dart';
import 'package:news_app/screens/view/pages/search_view.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainCubit(),
      child: scaffold(),
    );
  }

  Scaffold scaffold() => Scaffold(
        body: BlocConsumer<MainCubit, MainState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state is HomeState) {
              return HomeView();
            } else if (state is SearchState) {
              return SearchView();
            } else if (state is DetailState) {
              return DetailView();
            } else if (state is NotifyState) {
              return NotifyView();
            } else {
              return SizedBox();
            }
          },
        ),
      );
}
