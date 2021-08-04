import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class DesktopProjects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> _list = [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7.0),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.37,
          width: MediaQuery.of(context).size.width * 0.25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.grey[850],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(
                flex: 5,
              ),
              Text(
                "This is Project Number 1",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              Spacer(
                flex: 4,
              ),
              Text(
                "This is just an example will update it with real data soon",
                style: TextStyle(color: Colors.white, fontSize: 10.0),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7.0),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.37,
          width: MediaQuery.of(context).size.width * 0.25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.grey[850],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(
                flex: 5,
              ),
              Text(
                "This is Project Number 2",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              Spacer(
                flex: 4,
              ),
              Text(
                "This is just an example will update it with real data soon",
                style: TextStyle(color: Colors.white, fontSize: 10.0),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7.0),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.37,
          width: MediaQuery.of(context).size.width * 0.25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.grey[850],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(
                flex: 5,
              ),
              Text(
                "This is Project Number 3",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              Spacer(
                flex: 4,
              ),
              Text(
                "This is just an example will update it with real data soon",
                style: TextStyle(color: Colors.white, fontSize: 10.0),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7.0),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.37,
          width: MediaQuery.of(context).size.width * 0.25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.grey[850],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(
                flex: 5,
              ),
              Text(
                "This is Project Number 4",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              Spacer(
                flex: 4,
              ),
              Text(
                "This is just an example will update it with real data soon",
                style: TextStyle(color: Colors.white, fontSize: 10.0),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7.0),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.37,
          width: MediaQuery.of(context).size.width * 0.25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.grey[850],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(
                flex: 5,
              ),
              Text(
                "This is Project Number 5",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              Spacer(
                flex: 4,
              ),
              Text(
                "This is just an example will update it with real data soon",
                style: TextStyle(color: Colors.white, fontSize: 10.0),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7.0),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.37,
          width: MediaQuery.of(context).size.width * 0.25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.grey[850],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(
                flex: 5,
              ),
              Text(
                "This is Project Number 6",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              Spacer(
                flex: 4,
              ),
              Text(
                "This is just an example will update it with real data soon",
                style: TextStyle(color: Colors.white, fontSize: 10.0),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(
                flex: 2,
              ),
              Text(
                "Projects",
                style: TextStyle(color: Colors.white, fontSize: 42.0),
              ),
              Text(
                "some of the projects i have worked on :)",
                style: TextStyle(color: Colors.white),
              ),
              Spacer(
                flex: 3,
              ),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                height: MediaQuery.of(context).size.height * 0.37,
                width: MediaQuery.of(context).size.width * 0.7,
                child: AnimationLimiter(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: AnimationConfiguration.toStaggeredList(
                      duration: Duration(milliseconds: 2200),
                      childAnimationBuilder: (widget) => SlideAnimation(
                        child: FadeInAnimation(
                          child: widget,
                        ),
                      ),
                      children: _list,
                    ),
                  ),
                ),
              ),
              Spacer(
                flex: 2,
              ),
              InkWell(
                mouseCursor: SystemMouseCursors.click,
                borderRadius: BorderRadius.circular(20.0),
                onTap: () {
                  Navigator.pushNamed(context, '/desklogin');
                },
                child: Container(
                  height: 40.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.redAccent,
                  ),
                  child: Center(
                    child: Text(
                      "Add a new project",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
