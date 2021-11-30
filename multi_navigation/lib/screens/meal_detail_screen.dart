import 'package:flutter/material.dart';
import '../dummy.dart';

class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({Key? key}) : super(key: key);

  Widget buildSectionTile(String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Text(
        text,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget buildContainerList(Widget childWidget) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(10.0),
      height: 200.0,
      width: 300.0,
      child: childWidget,
    );
  }

  @override
  Widget build(BuildContext context) {
    final props = ModalRoute.of(context)?.settings.arguments;
    final selectedMeals =
        DUMMY_MEALS.firstWhere((element) => element.id == props);
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedMeals.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300.0,
              child: Image.network(
                selectedMeals.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            buildSectionTile('Ingredients'),
            buildContainerList(
              ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 10.0),
                    child: Card(
                      child: Text(selectedMeals.ingredients[index]),
                    ),
                  );
                },
                itemCount: selectedMeals.ingredients.length,
              ),
            ),
            buildSectionTile('Steps'),
            buildContainerList(ListView.builder(
              itemBuilder: (context, index) => ListTile(
                leading: CircleAvatar(
                  child: Text('#${index + 1}'),
                ),
                title: Text(selectedMeals.steps[index]),
              ),
              
              itemCount: selectedMeals.steps.length,
            ))
          ],
        ),
      ),
    );
  }
}
