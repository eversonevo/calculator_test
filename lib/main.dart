import 'package:calculator_test/app/modules/home/home_bindings.dart';
import 'package:calculator_test/app/modules/home/home_module.dart';
import 'package:calculator_test/app/modules/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: HomeBindings(),
      getPages: [
        ...HomeModule().routers,
      ],
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
