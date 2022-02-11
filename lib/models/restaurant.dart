import 'package:login_ui/constants/images.dart';
import 'food.dart';

class Restaurant {
  String name;
  String waitTime;
  String distance;
  String label;
  String logoUrl;
  String desc;
  num score;
  Map<String, List<Food>> menu;

  Restaurant(this.name, this.waitTime, this.distance, this.label, this.logoUrl,
      this.desc, this.score, this.menu);

  static Restaurant generateRestaurant() {
    return Restaurant(
        'GDSC UIT RESTAURANT',
        '20-30 min',
        '2.4 km',
        'Restaurant',
        Images.logo,
        '+1 kick',
        4.6,
        {
          'Recommend': Food.generateRecommendedFoods(),
          'Popular': Food.generatePopularFoods(),
          'Noodles': Food.generateNoodlesFoods(),
          'Pizza': Food.generatePizzaFoods(),
        });
  }
}