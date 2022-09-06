 import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../const/size_config.dart';

AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset("assets/icons/menu.svg"),
      ),
      title: Image.asset("assets/images/logo.png"),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/search.svg"),
        ),
        SizedBox(
          width: SizeConfig.defaultSize! * 0.5,
        )
      ],
    );
  }

