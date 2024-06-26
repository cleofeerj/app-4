import 'package:app_practice_create/models/food.dart';

class Restaurant {
  String name;
  String waitTime;
  String distance;
  String label;
  String logoUrl;
  String desc;
  num score;
  Map<String, List<Food>> menu;
  Restaurant(
    this.name,
    this.waitTime,
    this.distance,
    this.label,
    this.logoUrl,
    this.desc,
    this.score,
    this.menu,
  );
  static Restaurant generateRestaurant() {
    return Restaurant(
      'Chowking',
      '20-30 min',
      '2.4km',
      'Restaurant',
      'images/res_logo.png',
      'Orange sandwiches is delicious',
      4.7,
      {
        'Recommend': Food.generateRecommendFoods(),
        'Popular': Food.generateRecommendFoods(),
        'Noodles': Food.generateRecommendFoods(),
        'Pizza': Food.generateRecommendFoods(),
      },
    );
  }
}
