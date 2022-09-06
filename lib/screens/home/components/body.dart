import 'package:flutter/material.dart';
import 'package:recipe_design/const/size_config.dart';
import 'package:recipe_design/models/recipe_bundle.dart';
import 'package:recipe_design/screens/home/components/recipe_card.dart';

import 'categories.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const Categories(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                  itemCount: recipeBundle.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:
                        SizeConfig.orientation == Orientation.landscape ? 2 : 1,
                    mainAxisSpacing: SizeConfig.defaultSize! * 2,
                    crossAxisSpacing:
                        SizeConfig.orientation == Orientation.landscape
                            ? SizeConfig.defaultSize! * 2
                            : 0,
                    childAspectRatio: 1.65,
                  ),
                  itemBuilder: (context, index) {
                    return RecipeBundleCard(
                      recipeBundle: recipeBundle[index],
                      press: () {},
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
