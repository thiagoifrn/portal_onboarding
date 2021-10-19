import 'package:flutter/material.dart';

class CardMenuLeftWidget extends StatelessWidget {
  final String title;
  final String? content;

  const CardMenuLeftWidget({Key? key, required this.title, this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey.shade300,
      child: Column(
        children: [
          Text(title),
          Text(content!),
        ],
      ),
    );
  }
}
