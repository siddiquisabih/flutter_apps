import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void goToFirstScreen() {
      Navigator.pushNamed(context, '/firstlogin');
    }

    void goToSeconfScreen() {
      Navigator.pushNamed(context, '/secondlogin');
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Login Screens Example"),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BuildButton(
                subTitle: 'Login Screen Design',
                title: '01',
                clickEvent: goToFirstScreen,
              ),
              BuildButton(
                subTitle: 'Login Screen Design',
                title: '02',
                clickEvent: goToSeconfScreen,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BuildButton(
                subTitle: 'Login Screen Design',
                title: '03',
                clickEvent: () {},
              ),
              BuildButton(
                subTitle: 'Login Screen Design',
                title: '04',
                clickEvent: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BuildButton extends StatelessWidget {
  final String title;
  final String subTitle;
  final VoidCallback clickEvent;
  const BuildButton(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.clickEvent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: clickEvent,
      child: Container(
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.all(24),
        width: MediaQuery.of(context).size.width / 2.2,
        decoration: BoxDecoration(
            color: Colors.deepPurple[100],
            borderRadius: BorderRadius.circular(15)),
        child: InkWell(
          child: Column(
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                subTitle,
                style:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
