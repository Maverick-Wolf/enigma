import 'package:enigma/layout.dart';
import 'package:enigma/screens/login/desktop_login.dart';
import 'package:enigma/screens/login/mobile_login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(canvasColor: Color(0xFF233B4F)),
      routes: {
        '/': (context) => SiteLayout(),
        '/desklogin': (context) => DesktopLogin(),
        '/moblogin': (context) => MobileLogin(),
      },
    );
  }
}
