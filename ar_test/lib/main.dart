import 'package:arkit_plugin/arkit_plugin.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: ARKitSceneView(
            onARKitViewCreated: (controller) => arview(controller)));
  }
}

void arview(ARKitController controller) {
  final nodeAr = ARKitNode(
    geometry: ARKitSphere(materials: [
      ARKitMaterial(
        diffuse: ARKitMaterialImage("assets/image.jpg"),
        doubleSided: true,
      ),
    ], radius: 1),
    position: Vector3(
      0,
      0,
      0,
    ),
  );

  controller.add(nodeAr);
}
