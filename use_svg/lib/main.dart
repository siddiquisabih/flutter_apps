import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const RenderSvgsPage(),
    );
  }
}

class RenderSvgsPage extends StatelessWidget {
  const RenderSvgsPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> iconslist = [
      {"image": "assets/1.svg", "color": Colors.red},
      {"image": "assets/2.svg", "color": Colors.blue},
      {"image": "assets/3.svg", "color": Colors.green},
      {"image": "assets/4.svg", "color": Colors.orange},
      {"image": "assets/5.svg", "color": Colors.purple},
      {"image": "assets/6.svg", "color": Colors.yellow},
      {"image": "assets/7.svg", "color": Colors.teal},
      {"image": "assets/8.svg", "color": Colors.pink},
      {"image": "assets/9.svg", "color": Colors.indigo},
      {"image": "assets/10.svg", "color": Colors.amber},
      {"image": "assets/11.svg", "color": Colors.deepOrange},
      {"image": "assets/12.svg", "color": Colors.deepPurple},
      {"image": "assets/13.svg", "color": Colors.brown},
      {"image": "assets/14.svg", "color": Colors.cyan},
      {"image": "assets/15.svg", "color": Colors.lime},
      {"image": "assets/16.svg", "color": Colors.lightBlue},
      {"image": "assets/17.svg", "color": Colors.lightGreen},
      {"image": "assets/18.svg", "color": Colors.orangeAccent},
      {"image": "assets/19.svg", "color": Colors.blueGrey},
      {"image": "assets/20.svg", "color": Colors.grey},
    ];

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(title: const Text("Svg Icons")),
      body: SafeArea(
          child: Container(
        margin: const EdgeInsets.all(15),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Number of items per row
              crossAxisSpacing: 8.0, // Adjust the spacing between items
              mainAxisSpacing: 8.0, // Adjust the spacing between rows
            ),
            itemCount: iconslist
                .length, // Replace 10 with the number of items you have
            itemBuilder: (context, index) => IconContainer(
                  image: iconslist[index]["image"],
                  color: iconslist[index]["color"],
                )),
      )),
    );
  }
}

class IconContainer extends StatelessWidget {
  final String image;
  final Color color;
  const IconContainer({super.key, required this.image, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          border: Border.all(
            color: Colors.black26,
          )),
      child: SvgPicture.asset(
        image,
        height: 50,
        width: 50,
        colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
      ),
    );
  }
}