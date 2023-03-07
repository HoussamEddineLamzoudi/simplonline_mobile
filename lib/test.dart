import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  final List<String> imageUrls;
  final Function(String) onTap;


  Test({required this.imageUrls, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: imageUrls.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            onTap(imageUrls[index]);
          },
          child: Image.network(imageUrls[index]),
        );
      },
    );
  }
}




