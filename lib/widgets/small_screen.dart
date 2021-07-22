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
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                    image: AssetImage('assets/drawer.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text(
                "HOME",
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.home,
                color: Colors.redAccent,
              ),
              onTap: () {
                controller.animateToPage(0,
                    duration: Duration(milliseconds: 1200),
                    curve: Curves.easeInOutSine);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                "ABOUT",
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.person,
                color: Colors.redAccent,
              ),
              onTap: () {
                controller.animateToPage(1,
                    duration: Duration(milliseconds: 1200),
                    curve: Curves.easeInOutSine);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                "SKILLS",
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.palette,
                color: Colors.redAccent,
              ),
              onTap: () {
                controller.animateToPage(2,
                    duration: Duration(milliseconds: 1200),
                    curve: Curves.easeInOutSine);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                "EDUCATION",
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.school,
                color: Colors.redAccent,
              ),
              onTap: () {
                controller.animateToPage(3,
                    duration: Duration(milliseconds: 1200),
                    curve: Curves.easeInOutSine);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                "CONTACT",
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.phone,
                color: Colors.redAccent,
              ),
              onTap: () {
                controller.animateToPage(4,
                    duration: Duration(milliseconds: 1200),
                    curve: Curves.easeInOutSine);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
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
