class Recipe {

  String name;
  String ingredients;
  String instructions;
  String time;
  String image;
  bool isFavorite;


  Recipe({

    required this.name,
    required this.ingredients,
    required this.instructions,
    required this.time,
    required this.image,
    this.isFavorite = false,

  });

}