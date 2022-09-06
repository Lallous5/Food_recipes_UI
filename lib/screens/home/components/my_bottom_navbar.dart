import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:recipe_design/const/constants.dart';
import 'package:recipe_design/const/size_config.dart';

import '../../../models/nav_items.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaults = SizeConfig.defaultSize!;
    return Consumer<NavItems>(
      builder: (context, navItems, child) => Container(
        padding: EdgeInsets.symmetric(horizontal: defaults * 3),
        // height: 60,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            offset: Offset(0, -7),
            blurRadius: 30,
            color: Color(0xFF4B1A39).withOpacity(0.2),
          )
        ]),
        child: SafeArea(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                navItems.items.length,
                (index) {
                  return buildIconNavBar(
                    isActive: navItems.selectedIndex == index ? true : false,
                    icon: navItems.items[index].icon,
                    press: () {
                      navItems.chnageNavIndex(index: index);
                      if (navItems.items[index].destinationChecker()) {
                        Get.to(() => navItems.items[index].destination);
                      }
                    },
                  );
                },
              )),
        ),
      ),
    );
  }

  IconButton buildIconNavBar({
    required String icon,
    required Function() press,
    bool isActive = false,
  }) {
    return IconButton(
      onPressed: press,
      icon: SvgPicture.asset(
        icon,
        color: isActive ? kPrimaryColor : Color(0xFFD1D4D4),
        height: 22,
      ),
    );
  }
}
