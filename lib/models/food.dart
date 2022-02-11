

import 'package:login_ui/constants/images.dart';

class Food{
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
  bool hightLight;

  Food(this.imgUrl,
      this.desc,
      this.name,
      this.waitTime,
      this.score,
      this.cal,
      this.price,
      this.quantity,
      this.ingredients,
      this.about,
      {this.hightLight = false});

  static List<Food> generateRecommendedFoods() {
    return [
      Food(
          Images.banhChung,
          'Lunar new year',
          'Banh chung',
          '50 min',
          4.8,
          '325 kcal',
          10,
          1,
          [
            {'Noodle': Images.ingre1},
            {'Shrimp': Images.ingre2},
            {'Egg': Images.ingre3},
            {'Scallion': Images.ingre4}
          ],
          'Legendary Vietnamese food',
          hightLight: true),
      Food(
          Images.banhTrangTron,
          'Very cheap',
          'Bang trang tron',
          '50 min',
          4.8,
          '325 kcal',
          10,
          1,
          [
            {'Noodle': Images.ingre1},
            {'Shrimp': Images.ingre2},
            {'Egg': Images.ingre3},
            {'Scallion': Images.ingre4}
          ],
          'An affordable food',
          hightLight: false)
    ];
  }

  static List<Food> generatePopularFoods() {
    return [
      Food(
          Images.comTam,
          'Best selling',
          'Com tam',
          '50 min',
          4.8,
          '325 kcal',
          10,
          1,
          [
            {'Noodle': Images.ingre1},
            {'Shrimp': Images.ingre2},
            {'Egg': Images.ingre3},
            {'Scallion': Images.ingre4}
          ],
          'Delicious-cheap-healthy',
          hightLight: true),
      Food(
          Images.myTom,
          'When money is exhausted',
          'My tom',
          '50 min',
          4.8,
          '325 kcal',
          10,
          1,
          [
            {'Noodle': Images.ingre1},
            {'Shrimp': Images.ingre2},
            {'Egg': Images.ingre3},
            {'Scallion': Images.ingre4}
          ],
          'Delicious-cheap-unhealthy',
          hightLight: false)
    ];
  }

  static List<Food> generateNoodlesFoods() {
    return [
      Food(
          Images.pho,
          'Very delicious',
          'Pho',
          '50 min',
          4.8,
          '325 kcal',
          10,
          1,
          [
            {'Noodle': Images.ingre1},
            {'Shrimp': Images.ingre2},
            {'Egg': Images.ingre3},
            {'Scallion': Images.ingre4}
          ],
          'Traditional Vietnamese food',
          hightLight: true),
      Food(
          Images.bunDauMamTom,
          "Hanoi's food",
          'Bun dau mam tom',
          '50 min',
          4.8,
          '325 kcal',
          10,
          1,
          [
            {'Noodle': Images.ingre1},
            {'Shrimp': Images.ingre2},
            {'Egg': Images.ingre3},
            {'Scallion': Images.ingre4}
          ],
          'Obama likes this food',
          hightLight: false)
    ];
  }

  static List<Food> generatePizzaFoods() {
    return [
      Food(
          Images.pizzaHaisan,
          'Fresh seafood',
          'Seafood pizza',
          '50 min',
          4.8,
          '325 kcal',
          10,
          1,
          [
            {'Noodle': Images.ingre1},
            {'Shrimp': Images.ingre2},
            {'Egg': Images.ingre3},
            {'Scallion': Images.ingre4}
          ],
          'Pizza with seafood',
          hightLight: true),
      Food(
          Images.pizzaPhomaiXucxich,
          "Kid's favorite food",
          'Cheese sausage pizza',
          '50 min',
          4.8,
          '325 kcal',
          10,
          1,
          [
            {'Noodle': Images.ingre1},
            {'Shrimp': Images.ingre2},
            {'Egg': Images.ingre3},
            {'Scallion': Images.ingre4}
          ],
          'Pizza with cheese and sausage',
          hightLight: false)
    ];
  }
}