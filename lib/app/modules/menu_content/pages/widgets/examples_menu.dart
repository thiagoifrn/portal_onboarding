import 'package:flutter/material.dart';
import 'package:poc_portal/app/utils/strings.dart';

class ExamplesMenu {
  static List<ListTile> itemsMenuFirstStep = [
    const ListTile(
        title: Center(
      child: Text(Strings.titleJiraTopic,
          style: TextStyle(fontWeight: FontWeight.bold)),
    )),
    const ListTile(
        title: Center(
      child: Text(Strings.titleGitbookTopic,
          style: TextStyle(fontWeight: FontWeight.bold)),
    )),
    const ListTile(
        title: Center(
      child: Text(Strings.titleGithubTopic,
          style: TextStyle(fontWeight: FontWeight.bold)),
    )),
    const ListTile(
        title: Center(
      child: Text(Strings.titleVPNTopic,
          style: TextStyle(fontWeight: FontWeight.bold)),
    )),
    const ListTile(
        title: Center(
      child: Text(Strings.titleAWSTopic,
          style: TextStyle(fontWeight: FontWeight.bold)),
    )),
    const ListTile(
        title: Center(
      child: Text(Strings.titleShortcutTopic,
          style: TextStyle(fontWeight: FontWeight.bold)),
    )),
  ];

  static List<ListTile> itemsMenuTechs = [
    const ListTile(
        title: Center(
      child: Text(Strings.titleCleanArchTopic,
          style: TextStyle(fontWeight: FontWeight.bold)),
    )),
    const ListTile(
        title: Center(
      child: Text(Strings.titleBackTopic,
          style: TextStyle(fontWeight: FontWeight.bold)),
    )),
    const ListTile(
        title: Center(
      child: Text(Strings.titleFrontTopic,
          style: TextStyle(fontWeight: FontWeight.bold)),
    )),
    const ListTile(
        title: Center(
      child: Text(Strings.titleSRETopic,
          style: TextStyle(fontWeight: FontWeight.bold)),
    )),
  ];

  static List<ListTile> itemsMenuStudyMaterials = [
    const ListTile(
        title: Center(
      child: Text(Strings.titleCleanArchTopic,
          style: TextStyle(fontWeight: FontWeight.bold)),
    )),
    const ListTile(
        title: Center(
      child: Text(Strings.titleSRETopic,
          style: TextStyle(fontWeight: FontWeight.bold)),
    )),
    const ListTile(
        title: Center(
      child: Text(Strings.titleFlutterTopic,
          style: TextStyle(fontWeight: FontWeight.bold)),
    )),
    const ListTile(
        title: Center(
      child: Text(Strings.titleDockerTopic,
          style: TextStyle(fontWeight: FontWeight.bold)),
    )),
  ];

  static List<ListTile> itemsMenuGlossary = [];
}
