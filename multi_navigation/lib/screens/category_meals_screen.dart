import 'package:flutter/material.dart';
import '../widgets/meal_items.dart';
import '../dummy.dart';

class CategoryMealsScreen extends StatelessWidget {
// final String categoryId;
// final String categoryTitle;

  // const CategoryMealsScreen({required this.categoryId, required this.categoryTitle , Key? key}) : super(key: key);
  const CategoryMealsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final props =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final id = props['id'];
    final categoryTitle = props['title'];
    final categoryMeal = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(id);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text('Category Meals '),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return MealItems(
            title: categoryMeal[index].title,
            image: categoryMeal[index].imageUrl,
            duration: categoryMeal[index].duration,
            complexity: categoryMeal[index].complexity,
            affordability: categoryMeal[index].affordability,
            id: categoryMeal[index].id,
          );
        },
        itemCount: categoryMeal.length,
      ),
    );
  }
}
