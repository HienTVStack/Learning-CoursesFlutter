import 'package:flutter/material.dart';
import 'package:learning_coursesui/constants/colors.dart';

class TitleMain extends StatelessWidget {
  final title;
  const TitleMain({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
          color: textPrimaryColor, fontSize: 22, fontWeight: FontWeight.bold),
    );
  }
}
