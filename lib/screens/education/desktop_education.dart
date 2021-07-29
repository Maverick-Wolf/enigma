import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hovering/hovering.dart';
import 'dart:js' as js;

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
              children: [
                Spacer(),
                Column(
                  children: [
                    Center(
                      child: InkWell(
                        mouseCursor: SystemMouseCursors.click,
                        onTap: () {
                          js.context.callMethod(
                              'open', ['https://www.bits-pilani.ac.in/goa/']);
                        },
                        child: HoverWidget(
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.33,
                            width: MediaQuery.of(context).size.width * 0.24,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.black,
                                border: Border.all(
                                    color: Colors.white, width: 1.2)),
                            child: Column(
                              children: [
                                Spacer(
                                  flex: 2,
                                ),
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/college.png'),
                                  backgroundColor: Colors.transparent,
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
                          hoverChild: Container(
                            height: MediaQuery.of(context).size.height * 0.33,
                            width: MediaQuery.of(context).size.width * 0.24,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Center(
                              child: Container(
                                width: 130.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(13.0),
                                    color: Colors.transparent,
                                    border: Border.all(
                                      color: Color(0xFF6C63FF),
                                      width: 2.0,
                                    )),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Visit Website",
                                          style: TextStyle(
                                              color: Colors.white70,
                                              fontSize: 15.0),
                                        ),
                                        Icon(
                                          Icons.keyboard_arrow_right,
                                          color: Colors.white70,
                                        )
                                      ],
                                    )),
                              ),
                            ),
                          ),
                          onHover: (event) {},
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          mouseCursor: SystemMouseCursors.click,
                          onTap: () {
                            js.context.callMethod(
                                'open', ['https://www.tafssp.com/']);
                          },
                          child: HoverWidget(
                            onHover: (event) {},
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.33,
                              width: MediaQuery.of(context).size.width * 0.24,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.black,
                                  border: Border.all(
                                      color: Colors.white, width: 1.2)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Spacer(
                                    flex: 2,
                                  ),
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('mainschool.png'),
                                    backgroundColor: Colors.transparent,
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
                            hoverChild: Container(
                              height: MediaQuery.of(context).size.height * 0.33,
                              width: MediaQuery.of(context).size.width * 0.24,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Center(
                                child: Container(
                                  width: 130.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(13.0),
                                      color: Colors.transparent,
                                      border: Border.all(
                                        color: Color(0xFF6C63FF),
                                        width: 2.0,
                                      )),
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Visit Website",
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 15.0),
                                          ),
                                          Icon(
                                            Icons.keyboard_arrow_right,
                                            color: Colors.white70,
                                          )
                                        ],
                                      )),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        InkWell(
                          mouseCursor: SystemMouseCursors.click,
                          onTap: () {
                            js.context.callMethod(
                                'open', ['https://www.tafssp.com/']);
                          },
                          child: HoverWidget(
                            onHover: (event) {},
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.33,
                              width: MediaQuery.of(context).size.width * 0.24,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.black,
                                  border: Border.all(
                                      color: Colors.white, width: 1.2)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Spacer(
                                    flex: 2,
                                  ),
                                  CircleAvatar(
                                    backgroundImage: AssetImage('tafs.png'),
                                    backgroundColor: Colors.transparent,
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
                            hoverChild: Container(
                              height: MediaQuery.of(context).size.height * 0.33,
                              width: MediaQuery.of(context).size.width * 0.24,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Center(
                                child: Container(
                                    width: 130.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(13.0),
                                        color: Colors.transparent,
                                        border: Border.all(
                                          color: Color(0xFF6C63FF),
                                          width: 2.0,
                                        )),
                                    child: Align(
                                        alignment: Alignment.center,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Visit Website",
                                              style: TextStyle(
                                                  color: Colors.white70,
                                                  fontSize: 15.0),
                                            ),
                                            Icon(
                                              Icons.keyboard_arrow_right,
                                              color: Colors.white70,
                                            )
                                          ],
                                        ))),
                              ),
                            ),
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
                  image: AssetImage('assets/datascience.png'),
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.width * 0.35,
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
