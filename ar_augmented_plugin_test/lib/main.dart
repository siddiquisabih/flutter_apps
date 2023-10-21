import 'package:flutter/material.dart';
import 'package:augmented_reality_plugin/augmented_reality_plugin.dart';

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
      home: AugmentedRealityView(),
    );
  }
}

class AugmentedRealityView extends StatefulWidget {
  const AugmentedRealityView({Key? key}) : super(key: key);

  @override
  _AugmentedRealityViewState createState() => _AugmentedRealityViewState();
}

class _AugmentedRealityViewState extends State<AugmentedRealityView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ar App"),
      ),
      body: AugmentedRealityPlugin(
          'https://www.freepnglogos.com/uploads/furniture-png/furniture-png-transparent-furniture-images-pluspng-15.png'),
    );
  }
}
