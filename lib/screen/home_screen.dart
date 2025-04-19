import 'package:appbar/screen/mobile/mobile_screen.dart';
import 'package:appbar/screen/tablet/tablet_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body : LayoutBuilder(builder: (context, constraints) {
        final isTablet = constraints.maxWidth > 600;
        if (isTablet) {
          return const TabletScreen();
        } else {
          return const MobileScreen();
        }
      },
      ),
    );
  }
}
