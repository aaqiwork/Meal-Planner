import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/models/equipment_model.dart';
import 'package:flutter_recipe_app/models/ingredients_model.dart';
import 'package:flutter_recipe_app/models/recipe_model.dart';
import 'package:flutter_recipe_app/models/recipe_steps.dart';
import 'package:flutter_recipe_app/screens/detail_screen.dart';

import '../models/meal_model.dart';

class RecipeScreen extends StatefulWidget {
  final String mealType;
  final Recipe recipe;
  final List<Ingredient> ingredients;
  final List<Equipment> equipments;
  final Meal meal;
  final List<RecipeStepsModel> recipeSteps;


  RecipeScreen({this.meal, this.mealType, this.recipe, this.ingredients , this.equipments, this.recipeSteps});

  @override
  _RecipeScreenState createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
 
  
  @override
  Widget build(BuildContext context) {
     print(widget.ingredients);
    return Scaffold(
        body:DetailScreen(meal:widget.meal,ingredients:widget.ingredients , equipments:widget.equipments, recipe:widget.recipe, recipeSteps:widget.recipeSteps), 
        );
  }
}
