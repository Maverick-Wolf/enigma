import 'package:flutter/material.dart';

class SmallScreen extends StatefulWidget {
  @override
  _SmallScreenState createState() => _SmallScreenState();
}

class _SmallScreenState extends State<SmallScreen> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(viewportFraction: 1.0);
    return Scaffold(
      endDrawer: Drawer(),
      key: scaffoldKey,
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
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          pageSnapping: false,
          controller: controller,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                color: Colors.black,
                // height: MediaQuery.of(context).size.height,
                // width: MediaQuery.of(context).size.width,
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
