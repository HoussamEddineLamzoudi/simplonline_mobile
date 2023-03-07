import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('Simplonline'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Handle notification icon press
            },
          ),
        ],
      ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: Colors.white,
          // margin: const EdgeInsets.all(15),
          // margin: const EdgeInsets.fromLTRB(0, 180, 0, 20),
          width: double.infinity,
          child: const Text(
            'Welcome To',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Image.asset('images/sol-logo.png'),
      ],
    ));
  }
}
