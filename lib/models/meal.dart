enum Complexity { Simple, Challenging, Hard }
enum Affordability { Affordable, Pricey, Luxurious }

class Meal {
  final String id;
  final List<String> categories;
  final List<String> ingredients;
  final List<String> steps;
  final String title;
  final String urlImage;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final bool isVegan;
  final bool isVegetarian;
  final bool isLactoseFree;
  final bool isGlutenFree;

  const Meal(
    this.id,
    this.categories,
    this.ingredients,
    this.steps,
    this.title,
    this.urlImage,
    this.duration,
    this.complexity,
    this.affordability,
    this.isVegan,
    this.isVegetarian,
    this.isLactoseFree,
    this.isGlutenFree,
  );
}
