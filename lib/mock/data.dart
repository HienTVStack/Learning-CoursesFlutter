import 'dart:convert';

import 'package:learning_coursesui/models/course_model.dart';

List CATEGORY = ["UI/ UX", "Coding", "App design", "BA/ QC", "Tester", "Basic"];
// List Course COURSE = ["ReactJS", "Fluter", "NextJS", "NestJS", ""];

List<Course> COURSES = [
  Course(
      name: "ReactJS",
      description: "24 lesson",
      price: "12",
      imageUrl: "images/App_Development.png",
      star: "5"),
  Course(
      name: "Fluter",
      description: "14 lesson",
      price: "22",
      imageUrl: "images/Ecommerce.png",
      star: " 4.3"),
  Course(
      name: "NextJS",
      description: "54 lesson",
      price: "12",
      imageUrl: "images/UI_Design.png",
      star: "5"),
  Course(
      name: "UmiJS",
      description: "4 lesson",
      price: "12",
      imageUrl: "images/Web_Design.png",
      star: "5"),
  Course(
      name: "NestJS",
      description: "54 lesson",
      price: "12",
      imageUrl: "images/App_Development.png",
      star: "5"),
];
