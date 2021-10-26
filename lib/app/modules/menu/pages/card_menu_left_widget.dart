import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poc_portal/app/modules/menu/models/items_card_content_model.dart';

class CardMenuLeftWidget extends StatelessWidget {
  final String title;
  final String? content;

  final List<ItemsCardContentModel>? itemsCardContent;

  const CardMenuLeftWidget(
      {Key? key, required this.title, this.content, this.itemsCardContent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0XFFE5E5E5),
      child: ListView(
        shrinkWrap: true,
        children: itemsCardContent!
            .map(
              (e) => Container(
                margin: const EdgeInsets.only(right: 32),
                child: Card(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16))),
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
                                  fontWeight: FontWeight.bold, fontSize: 24),
                            ),
                            const SizedBox(height: 15),
                            Text(
                              e.content,
                              style: const TextStyle(color: Colors.black),
                            ),
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
    );
  }
}
