import 'package:flutter/material.dart';

class LargeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();
    return Scaffold(
      appBar: AppBar(
        title: TextButton(
          onPressed: () {
            controller.animateToPage(1,
                duration: Duration(milliseconds: 1500),
                curve: Curves.easeInSine);
          },
          child: Text(
            "This is page scrolling",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          pageSnapping: false,
          controller: controller,
          itemCount: 10,
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
