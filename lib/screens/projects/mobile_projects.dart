import 'dart:async';
import 'dart:convert';
import 'dart:js' as js;
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:http/http.dart';

class MobileProjects extends StatefulWidget {
  @override
  _MobileProjectsState createState() => _MobileProjectsState();
}

class _MobileProjectsState extends State<MobileProjects> {
  int _currentPage = 0;
  PageController _controller =
      PageController(viewportFraction: 0.8, initialPage: 0);

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(milliseconds: 5000), (Timer timer) async {
      Response response = await get(
          Uri.parse('https://api.github.com/users/Maverick-Wolf/repos'));
      List _list = jsonDecode(response.body);
      if (_currentPage < _list.length - 1) {
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
    getRepos() async {
      Response response = await get(
          Uri.parse('https://api.github.com/users/Maverick-Wolf/repos'));
      return response.body;
    }

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
                "All Projects,\nGithub Repositories",
                style: TextStyle(color: Colors.white, fontSize: 29.0),
              ),
              Text(
                "Powered by GitHub Api",
                style: TextStyle(color: Colors.white),
              ),
              Spacer(
                flex: 3,
              ),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
                height: MediaQuery.of(context).size.height * 0.33,
                width: MediaQuery.of(context).size.width,
                child: FutureBuilder(
                  future: getRepos(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      final List data = jsonDecode(snapshot.data);
                      return PageView.builder(
                        scrollDirection: Axis.horizontal,
                        controller: _controller,
                        itemCount: data.length,
                        onPageChanged: (page) {
                          setState(() {
                            _currentPage = page;
                          });
                        },
                        itemBuilder: (context, index) {
                          return Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 7.0),
                            child: InkWell(
                              mouseCursor: SystemMouseCursors.click,
                              onTap: () {
                                js.context.callMethod(
                                    'open', ['${data[index]['html_url']}']);
                              },
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.33,
                                width: MediaQuery.of(context).size.width * 0.6,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.grey[850],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Name",
                                      style: TextStyle(
                                          color: Colors.redAccent,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 1.2),
                                    ),
                                    Text(
                                      "${data[index]['name']}",
                                      style: TextStyle(
                                          fontSize: 17.3, color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      "Description",
                                      style: TextStyle(
                                          color: Colors.redAccent,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 1.2),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 7.0),
                                      child: Text(
                                        "${data[index]['description']}",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      "Langugae",
                                      style: TextStyle(
                                          color: Colors.redAccent,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 1.2),
                                    ),
                                    Text(
                                      "${data[index]['language']}",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16.5),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    } else {
                      return Container();
                    }
                  },
                ),
              ),
              Spacer(
                flex: 2,
              ),
              InkWell(
                mouseCursor: SystemMouseCursors.click,
                borderRadius: BorderRadius.circular(20.0),
                onTap: () {
                  Navigator.pushNamed(context, '/moblogin');
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
