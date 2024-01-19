import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_case/login/login_controller.dart';
import 'package:test_case/login/couter_view.dart';
import 'package:test_case/screen2.dart';

import 'images/image_extension.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'ĐĂNG NHẬP '),
    );
  }
}

