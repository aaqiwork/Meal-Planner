import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/components/recipe_step_card.dart';
import 'package:flutter_recipe_app/models/recipe_steps.dart';


class RecipeSteps extends StatelessWidget {
  final List<RecipeStepsModel> recipeSteps;

  RecipeSteps(this.recipeSteps);
  @override
  Widget build(BuildContext context) {
    print(recipeSteps.length); 
        return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Steps",
            style: Theme.of(context).textTheme.headline5,
          ),

          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
            //  physics: NeverScrollableScrollPhysics(),
              itemCount: recipeSteps.length,
              itemBuilder: (context, index) => RecipeCard(recipeSteps[index].step, recipeSteps[index].number),
            ),
          )
        ],
      ),
    );
      
  }
}
