import 'package:flutter/material.dart';
import 'package:who_am_i/entrence.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Giris(),
    );
  }
}
