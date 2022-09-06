import 'package:flutter/material.dart';
import 'package:recipe_design/const/constants.dart';
import 'package:recipe_design/screens/home/components/my_bottom_navbar.dart';

import '../../const/size_config.dart';
import 'component/body_p.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      bottomNavigationBar: MyBottomNavBar(),
      appBar: buildAppBar(),
      body: BodyP(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      title: Text("Profile"),
      centerTitle: true,
      leading: SizedBox(),
      actions: [
        TextButton(
          onPressed: () {},
          child: Text(
            "Edit",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: SizeConfig.defaultSize! * 1.6,
            ),
          ),
        ),
      ],
    );
  }
}
