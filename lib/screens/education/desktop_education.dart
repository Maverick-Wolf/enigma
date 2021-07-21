import 'package:flutter/material.dart';

class DesktopEducation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 15.0,
            ),
            Text(
              "Education",
              style: TextStyle(color: Colors.white, fontSize: 40.0),
            ),
            SizedBox(
              height: 25.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.4,
                          width: MediaQuery.of(context).size.width * 0.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.grey[850],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/college.png'),
                              ),
                              Text(
                                "Birla Institute of Technology and Science, Pilani",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "2020-2024",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16.0),
                              ),
                              Text(
                                "Doing my undergradute studies in Electronics Engineering",
                                style: TextStyle(
                                    color: Colors.white70, fontSize: 16.0),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: MediaQuery.of(context).size.width * 0.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.grey[850],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage('school.png'),
                              ),
                              Text(
                                "The Air Force School, Subroto Park",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "2018-2020",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Completed my Higher Secondary(12th) Education.",
                                style: TextStyle(color: Colors.white70),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: MediaQuery.of(context).size.width * 0.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.grey[850],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage('school.png'),
                              ),
                              Text(
                                "The Air Force School, Subroto Park",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "2013-2018",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Alma mater for my Secondary School Education.",
                                style: TextStyle(color: Colors.white70),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Image(
                  image: AssetImage('assets/skill.png'),
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width * 0.3,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
