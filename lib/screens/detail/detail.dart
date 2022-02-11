import 'package:flutter/material.dart';
import 'package:login_ui/constants/colors.dart';
import 'package:login_ui/models/food.dart';

class DetailPage extends StatelessWidget {
  final Food food;
  DetailPage(this.food);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.PrimaryColor,
      body: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              margin: EdgeInsets.only(top: 30, left: 20),
              padding: EdgeInsets.all(5),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: Icon(Icons.arrow_back_ios_outlined)),
            ),
            Container(
              margin: EdgeInsets.only(top: 30, right: 20),
              padding: EdgeInsets.all(5),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.favorite_outline),
            ),
          ]),
          Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 180,
                  ),
                  Container(
                    height: 80,
                    decoration: BoxDecoration(
                        color: ColorApp.Background,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50))),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                    padding: EdgeInsets.all(20),
                    width: 250,
                    height: 250,
                    decoration:
                        BoxDecoration(shape: BoxShape.circle, boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 10,
                      )
                    ]),
                    child: Image.asset(
                      food.imgUrl,
                      fit: BoxFit.cover,
                    )),
              ),
            ],
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(color: ColorApp.Background),
              child: Column(
                children: [
                  Align(
                    child: Text(
                      food.name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildIconText(Icons.access_time_outlined, Colors.blue,
                          food.waitTime),
                      _buildIconText(Icons.star_outline, Colors.amber,
                          food.score.toString()),
                      _buildIconText(Icons.local_fire_department_outlined,
                          Colors.red, food.cal),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey.withOpacity(0.1)),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              '\$',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              food.price.toString(),
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          height: 50,
                          width: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: ColorApp.PrimaryColor,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '-',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                              Text(
                                '+',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        right: 45,
                        child: Container(
                          padding: EdgeInsets.only(top: 12, left: 18),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Text(
                            food.quantity.toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "       Ingredients",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      height: 120,
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Container(
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Image.asset(
                                          food.ingredients[index].values.first),
                                      Text(food.ingredients[index].keys.first),
                                    ],
                                  ),
                                ),
                              ),
                          separatorBuilder: (Null, index) =>
                              SizedBox(width: 15),
                          itemCount: food.ingredients.length)),
                  SizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "       About",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  Text(
                    food.about,
                    style:
                        TextStyle(wordSpacing: 1.2, height: 1.5, fontSize: 16),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildIconText(IconData icon, Color color, String text) {
  return Row(
    children: [
      Icon(
        icon,
        color: color,
        size: 20,
      ),
      Text(
        text,
        style: TextStyle(
          fontSize: 16,
        ),
      )
    ],
  );
}
