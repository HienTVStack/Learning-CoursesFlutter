import 'package:flutter/material.dart';
import 'package:learning_coursesui/constants/colors.dart';
import 'package:learning_coursesui/constants/routesPath.dart';
import 'package:learning_coursesui/mock/data.dart';
import 'package:learning_coursesui/widgets/title_main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedCategory = 0;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: whiteColor,
      child: SingleChildScrollView(
          child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Choose Your",
                          style: TextStyle(
                              color: textSecondaryColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Desire Course",
                          style: TextStyle(
                              color: textPrimaryColor,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, loginRoute);
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          "images/profile.jpg",
                          height: 50,
                          fit: BoxFit.contain,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                padding:
                    const EdgeInsets.symmetric(vertical: 4, horizontal: 15),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 205, 208, 209),
                    borderRadius: BorderRadius.circular(15)),
                child: TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Search",
                      border: InputBorder.none,
                      suffixIcon: Icon(
                        Icons.search,
                        color: textSecondaryColor,
                      )),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TitleMain(title: "Category"),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 40,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 4,
                      itemBuilder: ((context, index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              _selectedCategory = index;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: _selectedCategory == index
                                    ? primaryColor
                                    : whiteColor,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: primaryColor)),
                            padding: const EdgeInsets.symmetric(
                                vertical: 7, horizontal: 15),
                            margin: const EdgeInsets.only(right: 20),
                            constraints: const BoxConstraints(minWidth: 100),
                            child: Center(
                              child: Text(
                                CATEGORY[index],
                                style: TextStyle(
                                    color: _selectedCategory == index
                                        ? whiteColor
                                        : primaryColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        );
                      })),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 120,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: COURSES.length,
                      shrinkWrap: true,
                      itemBuilder: ((context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, courseRoute);
                          },
                          child: Stack(
                            children: [
                              Container(
                                  height: double.infinity,
                                  padding: const EdgeInsets.only(
                                      left: 120,
                                      right: 15,
                                      top: 10,
                                      bottom: 10),
                                  margin: const EdgeInsets.only(right: 20),
                                  constraints:
                                      const BoxConstraints(maxWidth: 300),
                                  decoration: BoxDecoration(
                                      color: secondaryColor,
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          COURSES[index].name,
                                          style: const TextStyle(
                                              color: textPrimaryColor,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              COURSES[index].name,
                                              style: const TextStyle(
                                                  color: textSecondaryColor,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  COURSES[index]
                                                      .star
                                                      .toString(),
                                                  style: const TextStyle(
                                                      color: primaryColor,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                const Icon(
                                                  Icons.star,
                                                  color: primaryColor,
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "${COURSES[index].price} \$",
                                              style: const TextStyle(
                                                  color: primaryColor,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            Container(
                                              padding: const EdgeInsets.all(4),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                                color: primaryColor,
                                              ),
                                              child: InkWell(
                                                onTap: () {},
                                                child: const Icon(
                                                  Icons.add,
                                                  color: whiteColor,
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                      ])),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 60),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      "images/Ecommerce.png",
                                      height: 80,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      })),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TitleMain(
                  title: "Popular Course",
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              GridView.builder(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(20),
                  itemCount: COURSES.length,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, courseRoute);
                      },
                      child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: secondaryColor,
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                COURSES[index].name,
                                style: const TextStyle(
                                    color: textPrimaryColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    COURSES[index].description,
                                    style: const TextStyle(
                                        color: textSecondaryColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        COURSES[index].star.toString(),
                                        style: const TextStyle(
                                            color: primaryColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      const Icon(
                                        Icons.star,
                                        color: primaryColor,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    child: Image.asset(
                                      COURSES[index].imageUrl,
                                      fit: BoxFit.cover,
                                      height: 80,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )),
                    );
                  })
            ],
          ),
        ),
      )),
    );
  }
}
