import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';

class LargeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();
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
            minWidth: 100.0,
            child: Text(
              "PROJECTS",
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
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          pageSnapping: false,
          controller: controller,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                color: Colors.black,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "This is Page Number ${index + 1}",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            );
          }),
    );
  }
}
