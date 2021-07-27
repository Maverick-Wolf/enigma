import 'package:enigma/screens/about/desktop_about.dart';
import 'package:enigma/screens/contact/desktop_contact.dart';
import 'package:enigma/screens/education/desktop_education.dart';
import 'package:enigma/screens/home/desktop_home.dart';
import 'package:enigma/screens/skills/desktop_skills.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:hovering/hovering.dart';
import 'package:google_fonts/google_fonts.dart';

class LargeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> _list = [
      SafeArea(child: DesktopHome()),
      SafeArea(child: DesktopAbout()),
      SafeArea(child: DesktopSkills()),
      SafeArea(child: DesktopEducation()),
      SafeArea(child: DesktopContact()),
    ];
    PageController controller = PageController(viewportFraction: 1.1);
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0.0,
          title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: AnimationConfiguration.toStaggeredList(
                duration: Duration(milliseconds: 3000),
                childAnimationBuilder: (widget) => SlideAnimation(
                  child: FadeInAnimation(
                    child: widget,
                  ),
                ),
                children: [
                  RichText(
                    text: TextSpan(
                        text: "< ",
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                        children: [
                          TextSpan(
                              text: "Rachit Chaudhary",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 35.0,
                                fontFamily: 'Fuggles',
                              )),
                          TextSpan(
                            text: " /",
                            style: TextStyle(
                                color: Colors.white70, fontSize: 20.0),
                          ),
                          TextSpan(
                            text: ">",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        ]),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.13,
                  ),
                  HoverButton(
                    onpressed: () {
                      controller.animateToPage(0,
                          duration: Duration(milliseconds: 1200),
                          curve: Curves.easeInOutSine);
                    },
                    hoverColor: Colors.red[700],
                    elevation: 0.0,
                    hoverElevation: 0.0,
                    height: 45.0,
                    child: Text(
                      "HOME",
                      style: TextStyle(fontSize: 15.0, color: Colors.white),
                    ),
                  ),
                  HoverButton(
                    onpressed: () {
                      controller.animateToPage(1,
                          duration: Duration(milliseconds: 1200),
                          curve: Curves.easeInOutSine);
                    },
                    hoverColor: Colors.red[700],
                    elevation: 0.0,
                    hoverElevation: 0.0,
                    height: 45.0,
                    child: Text(
                      "ABOUT",
                      style: TextStyle(fontSize: 15.0, color: Colors.white),
                    ),
                  ),
                  HoverButton(
                    onpressed: () {
                      controller.animateToPage(2,
                          duration: Duration(milliseconds: 1200),
                          curve: Curves.easeInOutSine);
                    },
                    hoverColor: Colors.red[700],
                    elevation: 0.0,
                    hoverElevation: 0.0,
                    height: 45.0,
                    child: Text(
                      "SKILLS",
                      style: TextStyle(fontSize: 15.0, color: Colors.white),
                    ),
                  ),
                  HoverButton(
                    onpressed: () {
                      controller.animateToPage(3,
                          duration: Duration(milliseconds: 1200),
                          curve: Curves.easeInOutSine);
                    },
                    hoverColor: Colors.red[700],
                    elevation: 0.0,
                    hoverElevation: 0.0,
                    minWidth: 110.0,
                    height: 45.0,
                    child: Text(
                      "EDUCATION",
                      style: TextStyle(fontSize: 15.0, color: Colors.white),
                    ),
                  ),
                  HoverButton(
                    onpressed: () {
                      controller.animateToPage(4,
                          duration: Duration(milliseconds: 1200),
                          curve: Curves.easeInOutSine);
                    },
                    hoverColor: Colors.red[700],
                    elevation: 0.0,
                    hoverElevation: 0.0,
                    minWidth: 100.0,
                    height: 45.0,
                    child: Text(
                      "CONTACT",
                      style: TextStyle(fontSize: 15.0, color: Colors.white),
                    ),
                  ),
                ],
              ))),
      body: RawScrollbar(
        timeToFade: Duration(milliseconds: 1300),
        controller: controller,
        thumbColor: Colors.white70,
        thickness: 10.0,
        radius: Radius.circular(20.0),
        child: PageView(
          scrollDirection: Axis.vertical,
          pageSnapping: false,
          controller: controller,
          children: _list,
        ),
      ),
    );
  }
}
