import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {

  final String text;

  BubbleStories({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
          ),
          SizedBox(height: 6),
          Text(text)
        ],
      ),
    );
  }
}
