import 'package:flutter/material.dart';
import 'package:poc_portal/app/modules/menu/models/items_card_content_model.dart';

class GlossaryWidget extends StatelessWidget {
  final String title;
  final List<ItemsCardContentModel> itemsCardContent;
  const GlossaryWidget(
      {Key? key, required this.itemsCardContent, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          SingleChildScrollView(
            child: Column(
              children: itemsCardContent
                  .map(
                    (e) => Container(
                      margin: const EdgeInsets.only(right: 32),
                      child: Card(
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(36.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    e.titulo,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24),
                                  ),
                                  const SizedBox(height: 15),
                                  Text(
                                    e.content,
                                    style: const TextStyle(color: Colors.black),
                                  ),
                                  const SizedBox(height: 15),
                                  Text(e.buttomTitle!)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          )
        ]);
  }
}
