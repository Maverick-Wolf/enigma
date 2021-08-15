import 'dart:convert';
import 'dart:js' as js;
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class DesktopProjects extends StatelessWidget {
  @override
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
                style: TextStyle(color: Colors.white, fontSize: 42.0),
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
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                height: MediaQuery.of(context).size.height * 0.31,
                width: MediaQuery.of(context).size.width * 0.52,
                child: FutureBuilder(
                  future: getRepos(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      final List data = jsonDecode(snapshot.data);
                      return AnimationLimiter(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: data.length,
                          itemBuilder: (context, index) {
                            return AnimationConfiguration.staggeredList(
                              position: index,
                              duration: Duration(milliseconds: 1500),
                              child: SlideAnimation(
                                child: FadeInAnimation(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 7.0),
                                    child: InkWell(
                                      mouseCursor: SystemMouseCursors.click,
                                      onTap: () {
                                        js.context.callMethod('open',
                                            ['${data[index]['html_url']}']);
                                      },
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.37,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.25,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                          color: Colors.grey[850],
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
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
                                                  fontSize: 17.3,
                                                  color: Colors.white),
                                            ),
                                            SizedBox(
                                              height: 7.0,
                                            ),
                                            Text(
                                              "Description",
                                              style: TextStyle(
                                                  color: Colors.redAccent,
                                                  fontWeight: FontWeight.w500,
                                                  letterSpacing: 1.2),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 7.0),
                                              child: Text(
                                                "${data[index]['description']}",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 7.0,
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
                                                  color: Colors.white,
                                                  fontSize: 16.5),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
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
