import 'package:ejemplo1/cards_page.dart';
import 'package:ejemplo1/slider_page.dart';
import 'package:flutter/material.dart';
import 'package:ejemplo1/alert_page.dart';
import 'animate_container.dart';
import 'imputs_page.dart';



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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const InputsPage(),
    );
  }
}
