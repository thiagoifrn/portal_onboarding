import 'package:flutter/material.dart';
import 'package:poc_portal/app/utils/strings.dart';

class Alfabet extends StatelessWidget {
  const Alfabet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> alfabeto = Strings.alfabeto.split('');
    return Row(
      children: [
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Text(
                "aquiii",
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
              );
            },
          ),
        ),
      ],
    );
  }
}
