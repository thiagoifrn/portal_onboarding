import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.2,
              child: ListView(
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
          ],
        ),
      ),
    );
  }
}
