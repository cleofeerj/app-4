class Food {
  String imgUrl;
  String desc;
  String name;
  String waitTime;
  num score;
  String cal;
  num price;
  num quantity;
  List<Map<String, String>> ingredients;
  String about;
  bool highlight;
  Food(this.imgUrl, this.desc, this.name, this.waitTime, this.score, this.cal,
      this.price, this.quantity, this.ingredients, this.about,
      {this.highlight = false});

  static List<Food> generateRecommendFoods() {
    return [
      Food(
          'images/dish1.png',
          'No1. in Sales',
          'Soba Soup',
          '50 mins',
          4.8,
          '325 kcal',
          12,
          1,
          [
            {
              'Noodle': 'images/ingre1.png',
            },
            {
              'Shrimp': 'images/ingre2.png',
            },
            {
              'Egg': 'images/ingre3.png',
            },
            {
              'Scallion': 'images/ingre4.png',
            },
          ],
          'Simple put, ramen is a Japanese noodle soup',
          highlight: true),
      Food(
          'images/dish2.png',
          'No2. in Sales',
          'Soup Soup',
          '50 mins',
          4.8,
          '325 kcal',
          50,
          1,
          [
            {
              'Noodle': 'images/ingre1.png',
            },
            {
              'Shrimp': 'images/ingre2.png',
            },
            {
              'Egg': 'images/ingre3.png',
            },
            {
              'Scallion': 'images/ingre4.png',
            },
          ],
          'Simple put, ramen is a Japanese noodle soup',
          highlight: true),
      Food(
          'images/dish3.png',
          'No3. in Sales',
          'Lugaw Special',
          '50 mins',
          4.8,
          '325 kcal',
          55,
          1,
          [
            {
              'Noodle': 'images/ingre1.png',
            },
            {
              'Shrimp': 'images/ingre2.png',
            },
            {
              'Egg': 'images/ingre3.png',
            },
            {
              'Scallion': 'images/ingre4.png',
            },
          ],
          'Simple put, ramen is a Japanese noodle soup',
          highlight: true),
      Food(
          'images/dish4.png',
          'No2. in Sales',
          'chicken crispy',
          '50 mins',
          4.8,
          '325 kcal',
          50,
          1,
          [
            {
              'Noodle': 'images/ingre1.png',
            },
            {
              'Shrimp': 'images/ingre2.png',
            },
            {
              'Egg': 'images/ingre3.png',
            },
            {
              'Scallion': 'images/ingre4.png',
            },
          ],
          'Simple put, ramen is a Japanese noodle soup',
          highlight: true),
    ];
  }
}
