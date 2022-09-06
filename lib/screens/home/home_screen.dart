import 'package:flutter/material.dart';
import 'package:recipe_design/const/size_config.dart';
import 'package:recipe_design/screens/home/components/body.dart';

import 'components/buil_app_bar.dart';
import 'components/my_bottom_navbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(),
        body: const Body(),
        bottomNavigationBar: MyBottomNavBar(),
      ),
    );
  }
}
