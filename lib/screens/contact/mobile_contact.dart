import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hovering/hovering.dart';
import 'dart:js' as js;

class MobileContact extends StatefulWidget {
  @override
  _MobileContactState createState() => _MobileContactState();
}

class _MobileContactState extends State<MobileContact> {
  int _currentPage = 0;
  PageController _controller =
      PageController(viewportFraction: 0.8, initialPage: 0);
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(milliseconds: 4500), (Timer timer) {
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
              Icon(
                Icons.home,
                size: 50.0,
                color: Colors.redAccent,
              ),
              Text(
                "Location",
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
              SizedBox(
                height: 7.0,
              ),
              Text(
                "Delhi, India",
                style: TextStyle(color: Colors.white, fontSize: 12.0),
              )
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
              Icon(
                Icons.phone,
                size: 50.0,
                color: Colors.redAccent,
              ),
              Text(
                "Phone",
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
              SizedBox(
                height: 7.0,
              ),
              Text(
                "(+91) 8587955277",
                style: TextStyle(color: Colors.white, fontSize: 12.0),
              )
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
              Icon(
                Icons.mail,
                size: 50.0,
                color: Colors.redAccent,
              ),
              Text(
                "Email",
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
              SizedBox(
                height: 7.0,
              ),
              Text(
                "rachau76@gmail.com",
                style: TextStyle(color: Colors.white, fontSize: 12.0),
              )
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
                FontAwesomeIcons.discord,
                size: 50.0,
                color: Colors.redAccent,
              ),
              Text(
                "Discord",
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
              SizedBox(
                height: 7.0,
              ),
              Text(
                "Maverick Wolf#6565",
                style: TextStyle(color: Colors.white, fontSize: 12.0),
              )
            ],
          ),
        ),
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(
              flex: 5,
            ),
            Center(
              child: Text(
                "Contact",
                style: TextStyle(color: Colors.white, fontSize: 37.0),
              ),
            ),
            Center(
              child: Text(
                "Lets get in touch and build something together :)",
                style: TextStyle(fontSize: 13.0, color: Colors.white),
              ),
            ),
            Spacer(
              flex: 3,
            ),
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.27,
                width: MediaQuery.of(context).size.width * 0.53,
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
            Spacer(
              flex: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: AnimationConfiguration.toStaggeredList(
                duration: Duration(milliseconds: 1430),
                childAnimationBuilder: (widget) => SlideAnimation(
                  child: FadeInAnimation(
                    child: widget,
                  ),
                ),
                children: [
                  IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.github,
                        size: 40.0,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        js.context.callMethod(
                            'open', ['https://github.com/Maverick-Wolf']);
                      }),
                  SizedBox(
                    width: 20.0,
                  ),
                  IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.linkedin,
                        size: 40.0,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        js.context.callMethod('open', [
                          'https://www.linkedin.com/in/rachit-chaudhary-8217b8204/'
                        ]);
                      }),
                  SizedBox(
                    width: 20.0,
                  ),
                  IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.reddit,
                        size: 40.0,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        js.context.callMethod('open',
                            ['https://www.reddit.com/user/Branded-Devil']);
                      }),
                  SizedBox(
                    width: 20.0,
                  ),
                  IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.instagram,
                        size: 40.0,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        js.context.callMethod(
                            'open', ['https://www.instagram.com/imrachitt/']);
                      }),
                  SizedBox(
                    width: 20.0,
                  ),
                  IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.discord,
                        size: 40.0,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        js.context.callMethod(
                            'open', ['https://top.gg/user/549820835230253060']);
                      }),
                ],
              ),
            ),
            Spacer(
              flex: 5,
            )
          ],
        ),
      ),
    );
  }
}
