import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/components/ingredient_card.dart';
import 'package:flutter_recipe_app/models/ingredients_model.dart';



class Ingredients extends StatelessWidget {
  final List<Ingredient> ingredient;

  const Ingredients({Key key, this.ingredient}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  //  print(ingredient[1].orginalName);
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Ingredients",
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 105,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: ingredient.length,
              itemBuilder: (context, index) => IngredientCard(ingredient: ingredient[index]),
            ),
          )
        ],
      ),
    );
  }
}
