import 'package:flutter/material.dart';
import 'package:news_app/core/components/theme_components.dart';
import 'package:news_app/routes/my_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: MyTheme.mytheme,
        onGenerateRoute: MyRoute.instance.myRoutes,
        initialRoute: '/home');
  }
}
