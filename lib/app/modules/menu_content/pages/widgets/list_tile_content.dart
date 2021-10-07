import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Content {
  String title;
  String content;

  Content({required this.title, required this.content});
}

class ListTileContent extends StatefulWidget {
  const ListTileContent({Key? key}) : super(key: key);

  @override
  _ListTileContentState createState() => _ListTileContentState();
}

class _ListTileContentState extends State<ListTileContent> {
  List<Content> myContent = [
    Content(title: 'Jira', content: 'Isto é um texto sobre o Jira')
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const <Widget>[
                  ListTile(
                    title: Text(
                      'Jira',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('Isto é um texto sobre o Jira'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
