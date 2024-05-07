import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_controller.dart';
import 'package:flutter_application_1/home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.red,
            brightness: AppController.instance.isDartTheme
            ? Brightness.dark
            : Brightness.light,
          ),
          home: HomePage(),
        );
      },
    );
  }
}
