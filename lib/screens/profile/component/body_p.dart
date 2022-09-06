import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_design/const/constants.dart';
import 'package:recipe_design/const/size_config.dart';
import 'package:recipe_design/screens/profile/component/info.dart';

class BodyP extends StatelessWidget {
  const BodyP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaults = SizeConfig.defaultSize!;
    return Column(
      children: [
        Info(),
        ProfileMenuItem(
          iconSrc: 'assets/icons/bookmark_fill.svg',
          press: () {},
          title: 'Save Recipes',
        ),
        ProfileMenuItem(
          iconSrc: 'assets/icons/chef_color.svg',
          press: () {},
          title: 'Super Plan',
        ),
        ProfileMenuItem(
          iconSrc: 'assets/icons/language.svg',
          press: () {},
          title: 'Change Language',
        ),
        ProfileMenuItem(
          iconSrc: 'assets/icons/info.svg',
          press: () {},
          title: 'Help',
        ),
      ],
    );
  }
}

class ProfileMenuItem extends StatelessWidget {
  ProfileMenuItem(
      {Key? key,
      required this.iconSrc,
      required this.title,
      required this.press})
      : super(key: key);
  final String iconSrc, title;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    double defaults = SizeConfig.defaultSize!;
    return InkWell(
      onTap: () {},
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: defaults * 2, vertical: defaults),
        child: Row(
          children: [
            SvgPicture.asset(iconSrc, width: 20),
            SizedBox(width: defaults * 2),
            Text(
              title,
              style: TextStyle(
                fontSize: defaults * 2.2,
                color: kTextColor,
              ),
            ),
            Spacer(),
            IconButton(onPressed: press, icon: Icon(Icons.arrow_forward_ios))
          ],
        ),
      ),
    );
  }
}
