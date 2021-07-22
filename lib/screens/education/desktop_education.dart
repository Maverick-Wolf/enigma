import 'package:flutter/material.dart';

class DesktopEducation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
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
              height: 20.0,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Spacer(),
                Column(
                  children: [
                    Center(
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.33,
                        width: MediaQuery.of(context).size.width * 0.23,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.black,
                        ),
                        child: Column(
                          children: [
                            Spacer(
                              flex: 2,
                            ),
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/college.png'),
                              radius: 35.0,
                            ),
                            Spacer(
                              flex: 2,
                            ),
                            Text(
                              "Birla Institute of Technology and Science, Pilani",
                              style: TextStyle(color: Colors.white),
                            ),
                            Spacer(),
                            Text(
                              "Engineering in Electronics (2020-2024). ",
                              style: TextStyle(color: Colors.white70),
                            ),
                            Spacer(
                              flex: 3,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.33,
                          width: MediaQuery.of(context).size.width * 0.23,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.black,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Spacer(
                                flex: 2,
                              ),
                              CircleAvatar(
                                backgroundImage: AssetImage('school.png'),
                                radius: 35.0,
                              ),
                              Spacer(
                                flex: 2,
                              ),
                              Text(
                                "The Air Force School, Subroto Park",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Spacer(),
                              Center(
                                child: Text(
                                  "Higher Secondary Education (2018-2020).",
                                  style: TextStyle(color: Colors.white70),
                                ),
                              ),
                              Spacer(
                                flex: 3,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.33,
                          width: MediaQuery.of(context).size.width * 0.23,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.black,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Spacer(
                                flex: 2,
                              ),
                              CircleAvatar(
                                backgroundImage: AssetImage('tafs.jpg'),
                                radius: 35.0,
                              ),
                              Spacer(
                                flex: 2,
                              ),
                              Text(
                                "The Air Force School, Subroto Park",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Spacer(),
                              Center(
                                child: Text(
                                  "Secondary School Education (2013-2018).",
                                  style: TextStyle(color: Colors.white70),
                                ),
                              ),
                              Spacer(
                                flex: 3,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(
                  flex: 3,
                ),
                Image(
                  image: AssetImage('assets/skill.png'),
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width * 0.3,
                ),
                Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
