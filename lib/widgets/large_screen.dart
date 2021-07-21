import 'package:enigma/screens/about/desktop_about.dart';
import 'package:enigma/screens/home/desktop_home.dart';
import 'package:enigma/screens/skills/desktop_skills.dart';
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';

class LargeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> _list = [
      SafeArea(child: DesktopHome()),
      SafeArea(child: DesktopAbout()),
      SafeArea(child: DesktopSkills()),
      Container(
        color: Colors.amber,
      ),
      Container(
        color: Colors.green,
      )
    ];
    PageController controller = PageController(viewportFraction: 1.0);
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          title: Row(
            children: [
              SizedBox(
                width: 10.0,
              ),
              Text(
                "<Maverick Wolf/>",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              Spacer(),
              Spacer(),
              Spacer(),
              Spacer(),
              Spacer(),
              Spacer(),
              Spacer(),
              Spacer(),
              HoverButton(
                onpressed: () {
                  controller.animateToPage(0,
                      duration: Duration(milliseconds: 1200),
                      curve: Curves.easeInOutSine);
                },
                hoverColor: Colors.black,
                child: Text(
                  "HOME",
                  style: TextStyle(fontSize: 15.0, color: Colors.white),
                ),
              ),
              Spacer(),
              HoverButton(
                hoverShape: RoundedRectangleBorder(),
                onpressed: () {
                  controller.animateToPage(1,
                      duration: Duration(milliseconds: 1200),
                      curve: Curves.easeInOutSine);
                },
                hoverColor: Colors.black,
                child: Text(
                  "ABOUT",
                  style: TextStyle(fontSize: 15.0, color: Colors.white),
                ),
              ),
              Spacer(),
              HoverButton(
                onpressed: () {
                  controller.animateToPage(2,
                      duration: Duration(milliseconds: 1200),
                      curve: Curves.easeInOutSine);
                },
                hoverColor: Colors.black,
                child: Text(
                  "SKILLS",
                  style: TextStyle(fontSize: 15.0, color: Colors.white),
                ),
              ),
              Spacer(),
              HoverButton(
                onpressed: () {
                  controller.animateToPage(3,
                      duration: Duration(milliseconds: 1200),
                      curve: Curves.easeInOutSine);
                },
                hoverColor: Colors.black,
                minWidth: 120.0,
                child: Text(
                  "EDUCATION",
                  style: TextStyle(fontSize: 15.0, color: Colors.white),
                ),
              ),
              Spacer(),
              HoverButton(
                onpressed: () {
                  controller.animateToPage(4,
                      duration: Duration(milliseconds: 1200),
                      curve: Curves.easeInOutSine);
                },
                hoverColor: Colors.black,
                minWidth: 100.0,
                child: Text(
                  "CONTACT",
                  style: TextStyle(fontSize: 15.0, color: Colors.white),
                ),
              ),
              Spacer(),
            ],
          )),
      body: PageView(
        scrollDirection: Axis.vertical,
        pageSnapping: false,
        controller: controller,
        children: _list,
      ),
    );
  }
}
