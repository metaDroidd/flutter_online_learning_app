// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, unused_local_variable, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, avoid_print
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:online_learning/course_screen.dart';

import 'custom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){

    final txtTheme = Theme.of(context).textTheme;

    List<Color> BgColors = [
      Color(0xFFFDD133),
      Color(0xFF64DA91),
      Color(0xFF60C0FC),
      Color(0xFFFB7F7F),
      Color(0xFFCA84F9),
      Color(0xFF7AE667),
    ];

    List<String> ContainerList = [
      "Categoty",
      "Boutique Class",
      "Free Course",
      "Bookstore",
      "Live Course",
      "Leaderboard",
    ];

    List<Icon> IconsList = [
      Icon(Icons.file_copy, color: Colors.white, size: 35),
      Icon(Icons.video_call_rounded, color: Colors.white, size: 35),
      Icon(Icons.padding_sharp, color: Colors.white, size: 35),
      Icon(Icons.store, color: Colors.white, size: 35),
      Icon(Icons.video_camera_back_rounded, color: Colors.white, size: 35),
      Icon(Icons.leaderboard, color: Colors.white, size: 35),
    ];

    List<String> CourseImages = [
      "assets/image1.png",
      "assets/image2.png",
      "assets/image3.png",
      "assets/image4.png",
    ];

    List<String> CourseTitle = [
      "Morning TextBook",
      "English Reading",
      "Illustration",
    ];

    List<String> CourseRating = [
      "8.6",
      "8.0",
      "7.5",
    ];

    List<Color> CourseColor = [
      Color(0xFF64DA91),
      Color(0xFF60C0FC),
      Color(0xFFFB7F7F),
    ];

    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.only(top: 30, left: 15, right: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Home Page",
                    style: txtTheme.titleLarge,
                  ),
                  Icon(
                    Icons.notifications_rounded,
                    color: Color(0xFF3CB792),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    "Choose your course",
                    style: TextStyle(
                      color: Colors.black45,
                    ),
                  ),
                  Text(
                    " right away.",
                    style: TextStyle(
                      color: Color(0xFF3CB792),
                    ),
                  )
                ],
              ),
              SizedBox(height: 30),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black12.withOpacity(0.03),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    labelText: "Search for your grades, course, training.",
                    labelStyle: TextStyle(
                      fontSize: 14,
                      color: Colors.black45,
                    )
                  ),
                ),
              ),
              SizedBox(height: 40),
              GridView.builder(
                shrinkWrap: true,
                itemCount: 6,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ), itemBuilder: (context, index) {
                return Container(
                  child: Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: BgColors[index],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: IconsList[index],
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(ContainerList[index]),
                    ],
                  ),
                );
              }
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommended Courses",
                    style:
                      txtTheme.titleLarge,
                  ),
                  Text(
                    "More",
                    style: TextStyle(
                      color: Colors.black45,
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    "You may also like \t",
                    style: TextStyle(
                      color: Colors.black45,
                    ),
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.cyan.shade400,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        "6",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 190,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    for(var i=0; i<3; i++)
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5), 
                      height: 185,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Colors.black12,
                          ),
                        ]
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => CourseScreen(),),);
                            },
                            child: Container(
                              height: 80,
                              width: double.infinity,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: CourseColor[i],
                              ),
                              child: Image.asset(
                                CourseImages[i],
                                height: 70,
                                width: 40,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(CourseTitle[i],
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 12,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(CourseRating[i],
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          RatingBar.builder( 
                                            initialRating: 3,
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemSize: 15,
                                            itemBuilder: (context, _) => Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            onRatingUpdate: (rating) {
                                              print(rating);
                                            },
                                          ),
                                          Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius: BorderRadius.circular(30),
                                            ),
                                            child: Center(
                                              child: Icon(Icons.favorite,
                                              color: Colors.white,
                                              size: 19,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: CustomNavBar(),
      )
    );
  }
}
