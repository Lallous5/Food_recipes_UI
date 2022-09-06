import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../const/size_config.dart';
import '../../../models/recipe_bundle.dart';

class RecipeBundleCard extends StatelessWidget {
   const RecipeBundleCard({Key? key, required this.recipeBundle, required this.press}) : super(key: key);
  final RecipeBundle recipeBundle;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    double? defaultSize = SizeConfig.defaultSize!;
    return GestureDetector(
      onTap: press,
      child: Container(
        decoration: BoxDecoration(
          color: recipeBundle.color,
          borderRadius: BorderRadius.circular(defaultSize * 2),
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(defaultSize * 2),
                child: Column(
                  children: [
                    const Spacer(),
                    Text(
                      recipeBundle.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: defaultSize * 2.5,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: defaultSize * 0.5),
                    Text(
                      recipeBundle.description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: defaultSize * 1.8,
                      ),
                    ),
                    const Spacer(),
                    buildInfoRow(defaultSize,
                        iconSrc: "assets/icons/pot.svg",
                        text: "${recipeBundle.recipes} Recipes"),
                    SizedBox(height: defaultSize * 0.5),
                    buildInfoRow(defaultSize,
                        iconSrc: "assets/icons/chef.svg",
                        text: "${recipeBundle.chefs} Chefs"),
                    const Spacer(),
                  ],
                ),
              ),
            ),
            SizedBox(height: defaultSize * 0.5),
            AspectRatio(
              aspectRatio: 0.70,
              child: Image.asset(
                recipeBundle.imageSrc,
                fit: BoxFit.cover,
                alignment: Alignment.centerLeft,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row buildInfoRow(double defaultSize,
      {required String iconSrc, required String text}) {
    return Row(
      children: <Widget>[
        SvgPicture.asset(iconSrc),
        SizedBox(width: defaultSize),
        Text(
          text,
          style: TextStyle(
            color: Colors.white54,
            fontSize: defaultSize * 1.5,
          ),
        )
      ],
    );
  }
}
