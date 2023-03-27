import 'package:flutter/material.dart';
import 'package:learning_coursesui/constants/colors.dart';
import 'package:learning_coursesui/constants/routesPath.dart';
import 'package:learning_coursesui/mock/data.dart';
import 'package:learning_coursesui/widgets/course/box_information.dart';

class CourseScreen extends StatefulWidget {
  // final int indexCourse;
  const CourseScreen({
    super.key,
  });

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Column(children: [
            Image.asset("images/Web_Design.png"),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: const BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            COURSES[0].name,
                            style: const TextStyle(
                                color: textPrimaryColor,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "${COURSES[0].price} \$",
                                style: const TextStyle(
                                    color: primaryColor,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    COURSES[0].star.toString(),
                                    style: const TextStyle(
                                        color: textPrimaryColor,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: primaryColor,
                                    size: 22,
                                  )
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              CourseBoxInformation(),
                              CourseBoxInformation(),
                              CourseBoxInformation(),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Hello Friends, in this video I will teach you how to design courses app in flutter, how to design online courses app in flutter, how to design education app in flutter, how to design learning app in flutter, how to design study app in flutter, courses app ui design, online courses app ui design, education app ui design, study app ui design, ui, ux, uiux, app, app ui design, ui design, app ui design in flutter, flutter d",
                            style: TextStyle(
                                color: textPrimaryColor, fontSize: 18),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 100),
                            child: Center(
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, homeRoute);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: whiteColor,
                                      borderRadius: BorderRadius.circular(50)),
                                  padding: const EdgeInsets.all(20),
                                  child: const Icon(
                                    Icons.close,
                                    size: 30,
                                    color: textPrimaryColor,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black87,
                                  blurRadius: 5,
                                  spreadRadius: 1)
                            ]),
                        child: const Icon(
                          Icons.favorite,
                          color: whiteColor,
                        )),
                  ),
                )
              ],
            )
          ]),
        )),
      ),
    );
  }
}
