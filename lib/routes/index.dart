import 'package:flutter/material.dart';
import 'package:learning_coursesui/srceens/course_screen.dart';
import 'package:learning_coursesui/srceens/home_screen.dart';
import 'package:learning_coursesui/srceens/login_screen.dart';

import '../constants/routesPath.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case courseRoute:
        return MaterialPageRoute(builder: (context) => const CourseScreen());
      case loginRoute:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      default:
    }
    return MaterialPageRoute(
        builder: (context) => const Scaffold(
              body:
                  Align(alignment: Alignment.center, child: Text('Not found')),
            ));
  }
}
