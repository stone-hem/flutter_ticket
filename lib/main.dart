import 'package:flutter/material.dart';
import 'package:flutter_ticket/screens/bottom.dart';

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
        primarySwatch: Colors.blue,
      ),
      home:  const BottomBar(),
    );
  }
}

