import 'package:flutter/material.dart';
import 'package:location_service/service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
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
  double latitude = 0.0;
  double longitude = 0.0;
  double accuracy = 0.0;

  void getLocation() async {
    LatLngService service = LatLngService();
    await service.getCurrentLocation();
    setState(() {
      latitude = service.latitude;
      longitude = service.longitude;
      accuracy = service.accuracy;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        alignment: AlignmentDirectional.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Latitude ${latitude > 0 ? latitude.toString() : ""}'),
            Text('Latitude ${longitude > 0 ? longitude.toString() : ""}'),
            Text('Accuracy ${accuracy > 0 ? accuracy.toString() : ""}'),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed:  getLocation, child: Text('Get My location'))
          ],
        ),
      )),
    );
  }
}
