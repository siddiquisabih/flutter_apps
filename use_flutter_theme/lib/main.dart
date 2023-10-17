import 'package:flutter/material.dart';
import 'package:use_flutter_theme/theme/theme_constant.dart';
import 'package:use_flutter_theme/theme/theme_manager.dart';

void main() {
  runApp(const MyApp());
}

ThemeManager _themeManager = ThemeManager();

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void dispose() {
    _themeManager.removeListener(themeListner);
    super.dispose();
  }

  @override
  void initState() {
    _themeManager.addListener(themeListner);
    super.initState();
  }

  themeListner() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeManager.thememode,
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
  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Switch Theme app"),
        leading: const Icon(Icons.ac_unit),
        actions: [
          Switch(
              value: _themeManager.thememode == ThemeMode.dark,
              onChanged: (newvalue) => {_themeManager.toggleTheme(newvalue)})
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => {}, child: const Icon(Icons.add)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            "https://cdn-icons-png.flaticon.com/512/5556/5556468.png",
            height: 200.0,
          ),
          Text(
            "Sabih Siddiqui",
            style: _textTheme.titleLarge,
          ),
          Text(
            "@siddiqui",
            style: _textTheme.titleMedium,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "this is placeholder",
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          FilledButton(onPressed: () => {}, child: const Text("Just Click"))
        ],
      ),
    );
  }
}
