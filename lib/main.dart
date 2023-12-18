import 'package:flutter/material.dart';
import 'package:realstateapp/pages/HomePage.dart';
import 'package:realstateapp/pages/auth/sign_in_page.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 255, 255, 255),background: Colors.white),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

