import 'package:flutter/material.dart';
import 'package:universe/consts/Project_Colors.dart';
import 'package:universe/main_Page.dart';
import 'package:universe/datas/general_datas.dart';
import 'package:universe/widgets/profile_widget.dart';
import 'package:universe/widgets/search_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: MainPage(),

    );
  }
}
