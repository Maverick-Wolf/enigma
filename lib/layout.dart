import 'package:enigma/widgets/large_screen.dart';
import 'package:enigma/widgets/responsiveness.dart';
import 'package:enigma/widgets/small_screen.dart';
import 'package:flutter/material.dart';

class SiteLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveWidget(
          largeScreen: LargeScreen(), smallScreen: SmallScreen()),
    );
  }
}
