import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hovering/hovering.dart';
import 'dart:async';

class MobileSkills extends StatefulWidget {
  @override
  _MobileSkillsState createState() => _MobileSkillsState();
}

class _MobileSkillsState extends State<MobileSkills> {
  int _currentPage = 0;
  PageController _controller =
      PageController(viewportFraction: 0.8, initialPage: 0);
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(milliseconds: 3700), (Timer timer) {
      if (_currentPage < 3) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      if (_controller.hasClients) {
        _controller.animateToPage(
          _currentPage,
          duration: Duration(milliseconds: 1000),
          curve: Curves.easeIn,
        );
      }
    });
  }

  Widget build(BuildContext context) {
    List<Widget> _list = [
      Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: HoverContainer(
          height: MediaQuery.of(context).size.height * 0.27,
          width: MediaQuery.of(context).size.width * 0.53,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.grey[850],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(
                FontAwesomeIcons.code,
                color: Colors.white,
                size: 40.0,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Flutter App Development",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: HoverContainer(
          height: MediaQuery.of(context).size.height * 0.27,
          width: MediaQuery.of(context).size.width * 0.53,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.grey[850],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(
                FontAwesomeIcons.laptopCode,
                color: Colors.white,
                size: 40.0,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Flutter Web Development",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: HoverContainer(
          height: MediaQuery.of(context).size.height * 0.27,
          width: MediaQuery.of(context).size.width * 0.53,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.grey[850],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(
                FontAwesomeIcons.terminal,
                color: Colors.white,
                size: 40.0,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Discord Bot Development",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: HoverContainer(
          height: MediaQuery.of(context).size.height * 0.27,
          width: MediaQuery.of(context).size.width * 0.53,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.grey[850],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(
                FontAwesomeIcons.codeBranch,
                color: Colors.white,
                size: 40.0,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Open Source - Githib",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Spacer(
              flex: 1,
            ),
            Center(
              child: Text(
                "What I Do",
                style: TextStyle(color: Colors.white, fontSize: 33.0),
              ),
            ),
            Center(
              child: Text(
                "I may not be perfect, but I'm surely of some help :)",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Spacer(
              flex: 2,
            ),
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.27,
                width: MediaQuery.of(context).size.width * 0.6,
                child: PageView(
                  controller: _controller,
                  children: _list,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                ),
              ),
            ),
            Spacer(),
            Image(
              image: AssetImage('assets/manontable.png'),
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 0.55,
            ),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
