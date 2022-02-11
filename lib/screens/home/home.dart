import 'package:flutter/material.dart';
import 'package:login_ui/constants/colors.dart';
import 'package:login_ui/constants/images.dart';
import 'package:login_ui/models/restaurant.dart';
import 'package:login_ui/screens/home/widgets/food_list.dart';
import 'package:login_ui/screens/home/widgets/food_list_view.dart';
import 'package:login_ui/screens/home/widgets/restaurant_info.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selected = 0;
  final restaurant = Restaurant.generateRestaurant();
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.Background,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RestaurantInfo(),
            FoodList(selected, (int index) {
              setState(() {
                selected = index;
              });
              pageController.jumpToPage(index);
            }, restaurant),
            SizedBox(
              height: 40,
            ),
            Expanded(
                child: FoodListView(selected, (int index) {
              setState(() {
                selected = index;
              });
            }, pageController, restaurant))
          ],
        ),
      ),
    );
  }
}
