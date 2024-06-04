import 'package:app_practice_create/models/restaurant.dart';
import 'package:app_practice_create/screens/home/widget/food_item.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FoodListView extends StatelessWidget {
  final int selected;
  final Function callback;
  final PageController pageController;
  final Restaurant restaurant;

  FoodListView(
      this.selected, this.callback, this.pageController, this.restaurant);

  @override
  Widget build(BuildContext context) {
    final category = restaurant.menu.keys.toList();

    // Create a list of ListView widgets using category.map
    List<Widget> listViews = category.map((e) {
      return ListView.separated(
        itemBuilder: (context, index) => FoodItem(
          restaurant.menu[e]![index],
        ),
        separatorBuilder: (_, index) => SizedBox(height: 15),
        itemCount: restaurant.menu[e]!.length,
      );
    }).toList();

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: PageView(
        controller: pageController,
        onPageChanged: (index) => callback(index),
        // Provide the list of ListView widgets directly to children
        children: listViews,
      ),
    );
  }
}
