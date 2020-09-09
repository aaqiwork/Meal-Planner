class RecipeStepsModel {
  final String step;
  final int number;

  RecipeStepsModel({this.step, this.number});

  factory RecipeStepsModel.fromJson(Map<String, dynamic> json) {
    return new RecipeStepsModel(
      step: json['step'],
      number: json['number'],
    );
  }
}
