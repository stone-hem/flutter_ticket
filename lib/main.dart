import 'package:flutter/material.dart';
import 'package:flutter_ticket/screens/bottom.dart';
import 'package:flutter_ticket/utils/app_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ticket app',
      theme: ThemeData(
        primaryColor: primary,
      ),
      home:  const BottomBar(),
    );
  }
}

