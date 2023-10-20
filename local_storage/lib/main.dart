import 'package:flutter/material.dart';
import 'package:local_storage/storage_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Local Storage',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyanAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String storageValue = '';
  String userInput = '';
  void saveData() {
    StorageController storage = StorageController();
    storage.saveInStorage(userInput);
    getData();
  }

  void getData() async {
    StorageController storage = StorageController();
    String storedValue = await storage.getFromStorage();
    setState(() {
      storageValue = storedValue;
      userInput = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Local Storage"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration:
                  const InputDecoration(hintText: "Enter anything to save"),
              onChanged: (newValue) {
                setState(() {
                  userInput = newValue;
                });
              },
            ),
            const SizedBox(height: 10),
            Container(
              alignment: AlignmentDirectional.center,
              child: FilledButton(
                onPressed: userInput.trim() == '' ? null : saveData,
                child: const Text("Save in Storage"),
              ),
            ),
            StorageLoad(
              value: storageValue,
            ),
          ],
        ),
      ),
    );
  }
}

class StorageLoad extends StatelessWidget {
  final String value;
  const StorageLoad({super.key, required this.value});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Loaded From Storage",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Text(value),
      ],
    );
  }
}
