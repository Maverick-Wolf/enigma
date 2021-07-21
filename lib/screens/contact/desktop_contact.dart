import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hovering/hovering.dart';

class DesktopContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Contact",
              style: TextStyle(color: Colors.white, fontSize: 50.0),
            ),
            Text(
              "Let's get in touch and build something together :)",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HoverContainer(
                  height: MediaQuery.of(context).size.height * 0.27,
                  width: MediaQuery.of(context).size.width * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.grey[850],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.phone,
                        size: 50.0,
                        color: Colors.redAccent,
                      ),
                      Text(
                        "Phone",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                HoverContainer(
                  height: MediaQuery.of(context).size.height * 0.27,
                  width: MediaQuery.of(context).size.width * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.grey[850],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.mail,
                        size: 50.0,
                        color: Colors.redAccent,
                      ),
                      Text(
                        "Email",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                HoverContainer(
                  height: MediaQuery.of(context).size.height * 0.27,
                  width: MediaQuery.of(context).size.width * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.grey[850],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.discord,
                        size: 50.0,
                        color: Colors.redAccent,
                      ),
                      Text(
                        "Discord",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
