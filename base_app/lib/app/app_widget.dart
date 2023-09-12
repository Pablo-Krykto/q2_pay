import 'package:flutter/material.dart';
import 'package:module_commons/commons.dart';
import 'package:module_external_dependencies/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute(Q2PayRoutes.calculator);

    return MaterialApp.router(
        title: 'Quero 2 Pay POC',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: Q2PayColors.monoWhite,
            appBarTheme: const AppBarTheme(backgroundColor: Q2PayColors.primary, elevation: 0)),
        routerConfig: Modular.routerConfig); //added by extension
  }
}
