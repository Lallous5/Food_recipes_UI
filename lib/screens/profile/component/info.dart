import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../../../const/constants.dart';
import '../../../const/size_config.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaults = SizeConfig.defaultSize!;
    return SizedBox(
      height: defaults * 24,
      child: Stack(
        children: [
          ClipPath(
            clipper: CustomShape(),
            child: Container(
              height: defaults * 15,
              color: kPrimaryColor,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: defaults * 14,
                  width: defaults * 14,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: Colors.white, width: defaults * 0.8),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/pic.png"))),
                ),
                SizedBox(
                  height: defaults,
                ),
                Text(
                  "LALLOUS",
                  style: TextStyle(
                    fontSize: defaults * 2.2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: defaults / 2,
                ),
                Text(
                  "elieK@gmail.com",
                  style: TextStyle(
                    fontSize: defaults * 2,
                    fontWeight: FontWeight.normal,
                    color: Color(0xFF8492A2),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    double height = size.height;
    double width = size.width;
    path.lineTo(0, height - 100);
    path.quadraticBezierTo(width / 2, height, width, height - 100);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
