import 'package:get/get.dart';
import 'package:login_module/login_controller.dart/login_screen.dart';
import 'package:network_module/utils/utils.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce',
      theme: ThemeData(
        primarySwatch: Utils.mycolor,
      ),
      home: const LoginScreen(),
    );
  }
}
