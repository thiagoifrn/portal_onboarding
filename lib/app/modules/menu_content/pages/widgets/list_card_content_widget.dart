import 'package:flutter/material.dart';
import 'package:poc_portal/app/modules/menu_content/models/card_content_model.dart';

class ListCardContentWidget extends StatelessWidget {
  final List<CardContentModel> listsCards;

  const ListCardContentWidget({Key? key, required this.listsCards})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: listsCards
          .map(
            (e) => Card(
              elevation: 5,
              child: Column(
                children: [Text(e.title), Text(e.text)],
              ),
            ),
          )
          .toList(),
    );
  }
}
