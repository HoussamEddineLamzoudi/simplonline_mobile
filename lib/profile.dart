import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: const Text(
          'Profile',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 100),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
