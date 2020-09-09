import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/models/ingredients_model.dart';



class IngredientCard extends StatelessWidget {
  final Ingredient ingredient;

  const IngredientCard({Key key, this.ingredient});
  @override
  Widget build(BuildContext context) {
    print(ingredient.image);
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 80,
      child: Column(
        children: <Widget>[
          Container(
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              image: DecorationImage(
                image: NetworkImage(
                  'https://spoonacular.com/cdn/ingredients_100x100/'+ingredient.image,
                ),
              ),
            ),
          ),
          SizedBox(height: 10 / 2),
          Text(
            ingredient.name,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText2,
            maxLines: 2,
          ),
          SizedBox(height: 10 / 4),
          Text(
            ingredient.amount,
            maxLines: 1,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
