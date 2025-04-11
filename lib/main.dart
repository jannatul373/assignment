import 'package:flutter/material.dart';
import 'package:assignment/screen/login_screen.dart';
import 'package:assignment/screen/first_screen.dart';
import 'package:assignment/screen/second_screen.dart';
import 'screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Multi-Screen App',
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/first': (context) => const FirstScreen(),
        '/second': (context) => const SecondScreen(),
        '/home': (context) => const HomeScreen(), // Add home screen route
      },
    );
  }
}
