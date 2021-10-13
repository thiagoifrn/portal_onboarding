import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ListTileContent extends StatefulWidget {
  final List<ListTile> itemsMenu;
  const ListTileContent({
    Key? key,
    required this.itemsMenu,
  }) : super(key: key);

  @override
  _ListTileContentState createState() => _ListTileContentState();
}

class _ListTileContentState extends State<ListTileContent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: ListView(
                      shrinkWrap: true,
                      children: widget.itemsMenu
                          .map(
                            (e) => Card(
                              elevation: 5,
                              child: e,
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(child: RouterOutlet())
          ],
        ),
      ),
    );
  }
}
