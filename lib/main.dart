import 'package:flutter/material.dart';
import 'package:learning_coursesui/constants/routesPath.dart';
import 'package:learning_coursesui/routes/index.dart';
import 'package:learning_coursesui/srceens/home_screen.dart';

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
      title: 'Learning courses',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      initialRoute: homeRoute,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
