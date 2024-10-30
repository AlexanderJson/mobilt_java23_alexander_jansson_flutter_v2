// ingredient och attributes
import 'package:flutter/material.dart';


class CustomExpansionTile extends StatelessWidget {
  final String title;
  final String content;

  // konstruktor
  const CustomExpansionTile({super.key, required this.title, required this.content});


  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(title),
      children: [
        Padding(padding: const EdgeInsets.all(16),
        child: Text(content),
        )
      ],
    );
  }
}

