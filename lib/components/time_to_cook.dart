import 'package:flutter/material.dart';
import '../models/recipe_model.dart';
class TimeToCook extends StatelessWidget {

  final Recipe recipe;
  TimeToCook(this.recipe);
  @override
  Widget build(BuildContext context) {
    return  Container(
              width: MediaQuery.of(context).size.width*0.9,
                child: FlatButton.icon(
                  color: Colors.orange,
                  onPressed: () {
                    print('Pressed');
                    print(recipe.summary);
                    // Navigator.of(context)
                     //  .pushNamed(RecipeList.routeName, arguments: recipe.id);
                  },
                  icon: Icon(Icons.arrow_forward),
                  label: Text('Start Cooking'),
                ),
              );
  }
}