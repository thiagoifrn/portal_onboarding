import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:poc_portal/app/utils/strings.dart';

class ExamplesMenu {
  static List<ListTile> itemsMenuFirstStep = [
    ListTile(
      title: const SizedBox(
        width: 279,
        height: 81,
        child: Center(
          child: Text(
            Strings.titleJiraTopic,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      onTap: () => Modular.to.pushNamed('./jira'),
    ),
    ListTile(
      title: const SizedBox(
        width: 279,
        height: 81,
        child: Center(
          child: Text(
            Strings.titleGitbookTopic,
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      onTap: () => Modular.to.navigate('./gitbook'),
    ),
    ListTile(
      title: const SizedBox(
        width: 279,
        height: 81,
        child: Center(
          child: Text(
            Strings.titleGithubTopic,
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      onTap: () => Modular.to.navigate('./github'),
    ),
    ListTile(
      title: const SizedBox(
        width: 279,
        height: 81,
        child: Center(
          child: Text(
            Strings.titleVPNTopic,
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      onTap: () => Modular.to.navigate('./vpn'),
    ),
    ListTile(
      title: const SizedBox(
        width: 279,
        height: 81,
        child: Center(
          child: Text(
            Strings.titleAWSTopic,
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      onTap: () => Modular.to.navigate('./aws'),
    ),
    ListTile(
      title: const SizedBox(
        width: 279,
        height: 81,
        child: Center(
          child: Text(
            Strings.titleShortcutTopic,
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      onTap: () => Modular.to.navigate('./shortcut'),
    ),
  ];

  static List<ListTile> itemsMenuTechs = [
    ListTile(
      title: const SizedBox(
        width: 279,
        height: 81,
        child: Center(
          child: Text(
            Strings.titleCleanArchTopic,
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      onTap: () => Modular.to.navigate('./clean-arch'),
    ),
    ListTile(
      title: const SizedBox(
        width: 279,
        height: 81,
        child: Center(
          child: Text(
            Strings.titleBackTopic,
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      onTap: () => Modular.to.navigate('./back'),
    ),
    ListTile(
      title: const SizedBox(
        width: 279,
        height: 81,
        child: Center(
          child: Text(
            Strings.titleFrontTopic,
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      onTap: () => Modular.to.navigate('./front'),
    ),
    ListTile(
      title: const SizedBox(
        width: 279,
        height: 81,
        child: Center(
          child: Text(
            Strings.titleSRETopic,
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      onTap: () => Modular.to.navigate('./sre'),
    ),
  ];

  static List<ListTile> itemsMenuStudyMaterials = [
    ListTile(
      title: const SizedBox(
        width: 279,
        height: 81,
        child: Center(
          child: Text(
            Strings.titleCleanArchTopic,
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      onTap: () => Modular.to.navigate('./clean-arch'),
    ),
    ListTile(
      title: const SizedBox(
        width: 279,
        height: 81,
        child: Center(
          child: Text(
            Strings.titleSRETopic,
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      onTap: () => Modular.to.navigate('./sre'),
    ),
    ListTile(
      title: const SizedBox(
        width: 279,
        height: 81,
        child: Center(
          child: Text(
            Strings.titleFlutterTopic,
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      onTap: () => Modular.to.navigate('./flutter'),
    ),
    ListTile(
      title: const SizedBox(
        width: 279,
        height: 81,
        child: Center(
          child: Text(
            Strings.titleDockerTopic,
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      onTap: () => Modular.to.navigate('./docker'),
    ),
  ];

  static List<ListTile> itemsMenuGlossary = [];
}
