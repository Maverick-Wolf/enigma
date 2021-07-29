import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:js' as js;

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
    Timer.periodic(Duration(milliseconds: 4300), (Timer timer) {
      if (_currentPage < 2) {
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

  @override
  Widget build(BuildContext context) {
    List<Widget> _list = [
      Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: InkWell(
          mouseCursor: SystemMouseCursors.click,
          onTap: () {
            js.context
                .callMethod('open', ['https://www.bits-pilani.ac.in/goa/']);
          },
          child: Container(
            height: MediaQuery.of(context).size.height * 0.33,
            width: MediaQuery.of(context).size.width * 0.24,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.black,
                border: Border.all(color: Colors.white, width: 1.2)),
            child: Column(
              children: [
                Spacer(
                  flex: 2,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/college.png'),
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
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: InkWell(
          mouseCursor: SystemMouseCursors.click,
          onTap: () {
            js.context.callMethod('open', ['https://www.tafssp.com/']);
          },
          child: Container(
            height: MediaQuery.of(context).size.height * 0.33,
            width: MediaQuery.of(context).size.width * 0.24,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.black,
                border: Border.all(color: Colors.white, width: 1.2)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacer(
                  flex: 2,
                ),
                Image(
                  image: AssetImage('assets/circleSchool1.png'),
                  width: 70.0,
                  height: 70.0,
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
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: InkWell(
          mouseCursor: SystemMouseCursors.click,
          onTap: () {
            js.context.callMethod('open', ['https://www.tafssp.com/']);
          },
          child: Container(
            height: MediaQuery.of(context).size.height * 0.33,
            width: MediaQuery.of(context).size.width * 0.24,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.black,
                border: Border.all(color: Colors.white, width: 1.2)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacer(
                  flex: 2,
                ),
                Image(
                  image: AssetImage('assets/circleSchool2.png'),
                  width: 80.0,
                  height: 80.0,
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
                  onPageChanged: (page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                ),
              ),
            ),
            Image(
              image: AssetImage('assets/datascience.png'),
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.55,
            ),
          ],
        ),
      ),
    );
  }
}
