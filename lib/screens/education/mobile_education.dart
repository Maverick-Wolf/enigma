import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';

class MobileEducation extends StatefulWidget {
  @override
  _MobileEducationState createState() => _MobileEducationState();
}

class _MobileEducationState extends State<MobileEducation> {
  int _currentPage = 0;
  PageController _controller =
      PageController(viewportFraction: 0.8, initialPage: 0);
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(milliseconds: 3700), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _controller.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 1000),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _list = [
      Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: HoverContainer(
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
      Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: HoverContainer(
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
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: HoverContainer(
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
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Text(
                "Education",
                style: TextStyle(color: Colors.white, fontSize: 33.0),
              ),
            ),
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.35,
                width: MediaQuery.of(context).size.width * 0.8,
                child: PageView(
                  controller: _controller,
                  children: _list,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            Image(
              image: AssetImage('assets/skill.png'),
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.6,
            ),
          ],
        ),
      ),
    );
  }
}
