import 'package:flutter/material.dart';
import 'package:learning_coursesui/constants/colors.dart';

class CourseBoxInformation extends StatelessWidget {
  const CourseBoxInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      decoration: BoxDecoration(
          color: whiteColor, borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: const [
          Text(
            "25",
            style: TextStyle(color: primaryColor, fontSize: 18),
          ),
          Text(
            "Classes",
            style: TextStyle(color: textPrimaryColor, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
