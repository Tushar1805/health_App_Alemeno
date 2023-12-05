import 'package:flutter/material.dart';
import 'package:health_checkup/Responsive/desktoBody.dart';
import 'package:health_checkup/Responsive/mobileBody.dart';
import 'package:health_checkup/Responsive/responsiveLayout.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
          mobileBody: MobileBody(), desktopBody: DesktopBody()),
    );
  }
}
