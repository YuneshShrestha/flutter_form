import 'package:flutter/material.dart';
import 'package:form/binding/controller_binding.dart';
import 'package:form/view/home.dart';
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
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialBinding: ControllerBinding(),
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.

        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme.of(context).copyWith(
          backgroundColor: Colors.white,
          elevation: 0.2,
          titleTextStyle: Theme.of(context).textTheme.headline6,
        ),
        // elevation: 2.0,
      ),
      home: const Home(),
    );
  }
}
