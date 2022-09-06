import 'package:flutter/material.dart';
import 'package:recipe_design/const/constants.dart';
import 'package:recipe_design/screens/home/components/my_bottom_navbar.dart';

class CameraScreen extends StatelessWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavBar(),
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text("Camera"),
      ),
    );
  }
}