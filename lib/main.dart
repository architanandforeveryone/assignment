import 'package:assignment/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: "ASSIGNMENT",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.blue,
        ),
        home: HomeScreen(),
    );
  }
}
