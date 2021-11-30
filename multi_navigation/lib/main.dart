import 'package:flutter/material.dart';
import '../screens/tabs_screen.dart';

import './screens/category_meals_screen.dart';
import './screens/categories_screen.dart';
import '../screens/meal_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const TabsScreen(),
        '/categoryMeals': (context) => const CategoryMealsScreen(), 
        '/detailMeals': (context) => const MealDetailScreen(), 
      },
      
      // home: CategoryScreen(),
    );
  }
}

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CategoryScreen(),
      ),
    );
  }
}
