import 'package:flutter/material.dart';
import 'package:recipe_design/const/constants.dart';
import 'package:recipe_design/screens/home/components/my_bottom_navbar.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavBar(),
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text("List"),
      ),
    );
  }
}
