import 'package:flutter/material.dart';
import 'package:poc_portal/app/modules/menu/models/items_card_content_model.dart';
import 'package:poc_portal/app/utils/widgets/alfabet.dart';

class GlossaryWidget extends StatelessWidget {
  final String title;
  final List<ItemsCardContentModel> itemsCardContent;
  const GlossaryWidget(
      {Key? key, required this.itemsCardContent, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(top: 32.0, left: 32.0, bottom: 32.0),
                child: Text(
                  title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 32),
                ),
              ),
              //const Alfabet(),
              Padding(
                padding: const EdgeInsets.only(
                    left: 32.0, bottom: 32.0, right: 32.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: itemsCardContent
                      .map(
                        (e) => SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Card(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(32.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                        style: const TextStyle(
                                            color: Colors.black),
                                      ),
                                      const SizedBox(height: 15),
                                      ElevatedButton(
                                        child: Text(e.buttomTitle!),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
