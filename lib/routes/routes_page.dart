import 'package:dothes_app/users/authentication/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Clother App',
        home: FutureBuilder(
          future: null,
          builder: (context, snapshot) {
            return const LoginScreen();
          },
        ));
  }
}