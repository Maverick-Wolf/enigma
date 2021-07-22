import 'package:enigma/screens/about/mobile_about.dart';
import 'package:enigma/screens/contact/mobile_contact.dart';
import 'package:enigma/screens/education/mobile_education.dart';
import 'package:enigma/screens/home/mobile_home.dart';
import 'package:enigma/screens/skills/mobile_skills.dart';
import 'package:flutter/material.dart';

class SmallScreen extends StatefulWidget {
  @override
  _SmallScreenState createState() => _SmallScreenState();
}

class _SmallScreenState extends State<SmallScreen> {
  @override
  Widget build(BuildContext context) {
    List<Widget> _list = [
      SafeArea(
        child: MobileHome(),
      ),
      SafeArea(child: MobileAbout()),
      SafeArea(
        child: MobileSkills(),
      ),
      SafeArea(child: MobileEducation()),
      SafeArea(child: MobileContact()),
    ];
    PageController controller = PageController(viewportFraction: 1.1);
    return Scaffold(
      endDrawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
        title: Row(
          children: [
            SizedBox(
              width: 10.0,
            ),
            Text("<Maverick Wolf/>"),
          ],
        ),
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        pageSnapping: false,
        controller: controller,
        children: _list,
      ),
    );
  }
}
