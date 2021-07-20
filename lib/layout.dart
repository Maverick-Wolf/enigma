import 'package:enigma/widgets/large_screen.dart';
import 'package:enigma/widgets/responsiveness.dart';
import 'package:enigma/widgets/small_screen.dart';
import 'package:enigma/widgets/top_nav.dart';
import 'package:flutter/material.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      // appBar: topNavigationBar(context, key),
      endDrawer: ResponsiveWidget.isSmallScreen(context) ? Drawer() : null,
      body: ResponsiveWidget(
          largeScreen: LargeScreen(), smallScreen: SmallScreen()),
    );
  }
}
