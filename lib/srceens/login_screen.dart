import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_coursesui/constants/colors.dart';
import 'package:learning_coursesui/constants/routesPath.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _passToggle = false;
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            children: [
              Image.asset(
                "images/Web_Design.png",
                height: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "DigiTech - Education",
                style: TextStyle(
                    color: textPrimaryColor,
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    shadows: [
                      Shadow(
                        blurRadius: 1.0,
                        color: textPrimaryColor,
                        offset: Offset(1, 1),
                      )
                    ]),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    TextField(
                        controller: usernameController,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Tên đăng nhập",
                            prefixIcon: Icon(Icons.people))),
                    const SizedBox(
                      height: 15,
                    ),
                    TextField(
                      controller: passwordController,
                      obscureText: !_passToggle,
                      decoration: InputDecoration(
                          labelText: "Mật khẩu",
                          border: const OutlineInputBorder(),
                          prefixIcon: const Icon(Icons.key),
                          suffixIcon: InkWell(
                              onTap: () {
                                setState(() {
                                  _passToggle = !_passToggle;
                                });
                              },
                              child: _passToggle
                                  ? const Icon(CupertinoIcons.eye_fill)
                                  : const Icon(CupertinoIcons.eye_slash_fill))),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Material(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(10),
                        child: InkWell(
                          onTap: () async {},
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 40),
                            child: Text(
                              "Đăng nhập",
                              style: TextStyle(
                                  color: whiteColor,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, signUpRoute);
                      },
                      child: const Text(
                        "Quên mật khẩu?",
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Bạn chưa có tài khoản ",
                          style: TextStyle(
                            color: textPrimaryColor,
                            fontSize: 20,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, signUpRoute);
                          },
                          child: const InkWell(
                            child: Text(
                              "Đăng ký",
                              style: TextStyle(
                                color: primaryColor,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
