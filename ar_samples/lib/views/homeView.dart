import 'package:earth_ar_app/views/localAndWebObjectsView.dart';
import 'package:earth_ar_app/views/optionModels.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({required this.title, Key? key}) : super(key: key);

  List<OptionsModel> options = [
    OptionsModel(
        filePath: "assets/Fox/Fox.gltf",
        optionName: "Fox",
        bgColor: Colors.red),
    OptionsModel(
        filePath: "assets/2CylinderEngine/2CylinderEngine.gltf",
        optionName: "2CylinderEngine",
        bgColor: Colors.green),
    OptionsModel(
        filePath: "assets/Duck/Duck.gltf",
        optionName: "Duck",
        bgColor: Colors.blue),
    OptionsModel(
        filePath: "assets/Sponza/glTF/Sponza.gltf",
        optionName: "Sponza",
        bgColor: Colors.purple),
    OptionsModel(
        filePath: "assets/Chicken_01/Chicken_01.gltf",
        optionName: "Chicken_01",
        bgColor: Colors.orange),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(top: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Choose Model",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Wrap(
              spacing: 10.0,
              runSpacing: 10.0, // gap between horizontal line of containers
              children: List.generate(
                options.length,
                (index) => SizedBox(
                  width: MediaQuery.of(context).size.width * .40,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(
                              options[index].bgColor)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LocalAndWebObjectsView(
                                      modelData: options[index],
                                    )));
                      },
                      child: Text(options[index].optionName)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) =>
//                               const LocalAndWebObjectsView()));
//                 },
//                 child: const Text("Local / Web Objects")),
