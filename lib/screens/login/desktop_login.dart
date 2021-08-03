import 'package:flutter/material.dart';

class DesktopLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEE9E5),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFFFEE9E5),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Row(
        children: [
          Spacer(),
          Image(
            image: AssetImage('assets/login.gif'),
            width: MediaQuery.of(context).size.width * 0.4,
            height: MediaQuery.of(context).size.height * 0.9,
          ),
          Spacer(
            flex: 2,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "User Login",
                style: TextStyle(
                    fontSize: 30.0,
                    letterSpacing: 1.2,
                    color: Colors.black87,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 3.0,
              ),
              Text("Just a way for me to login and add new projects :)"),
              SizedBox(
                height: 35.0,
              ),
              Container(
                height: 40.0,
                width: MediaQuery.of(context).size.width * 0.23,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[400],
                ),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  enableInteractiveSelection: true,
                  cursorColor: Colors.grey[800],
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color(0xFF656565),
                      ),
                      hintText: 'Username',
                      hintStyle: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 40.0,
                width: MediaQuery.of(context).size.width * 0.23,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[400],
                ),
                child: TextField(
                  enableInteractiveSelection: true,
                  cursorColor: Colors.grey[800],
                  obscureText: true,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Color(0xFF656565),
                      ),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              InkWell(
                mouseCursor: SystemMouseCursors.click,
                child: Container(
                  height: 40.0,
                  width: MediaQuery.of(context).size.width * 0.23,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Color(0xFFF79229).withOpacity(0.72),
                  ),
                  child: Center(child: Text("LOGIN")),
                ),
              ),
            ],
          ),
          Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
