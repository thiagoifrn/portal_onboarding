import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:poc_portal/app/modules/menu/examples/items_card_content_example.dart';
import 'package:poc_portal/app/modules/menu/examples/items_left_menu_example.dart';

import 'pages/card_menu_left_widget.dart';
import 'pages/menu_content_widget.dart';
import 'pages/menu_left_widget.dart';

class MenuModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (_, __) => const MenuContentWidget(),
          children: [
            ChildRoute(
              '/primeiros_passos',
              child: (_, __) => MenuLeftWidget(
                title: 'Primeiros passos e acessos',
                itemsLeftMenu: ItemsLeftMenuExample.itemsLeftMenuFirstSteps,
              ),
              children: [
                ChildRoute(
                  '/jira',
                  child: (_, __) => CardMenuLeftWidget(
                    title: 'jira',
                    content: 'Jira é uma ferramente top, só vcs vendo',
                    itemsCardContent:
                        ItemsCardContentExample.itemsCardContentJira,
                  ),
                ),
                ChildRoute(
                  '/gitbook',
                  child: (_, __) => CardMenuLeftWidget(
                    title: 'gitbook',
                    content: 'Aqui é o gitbook',
                    itemsCardContent:
                        ItemsCardContentExample.itemsCardContentGitbook,
                  ),
                ),
                ChildRoute(
                  '/github',
                  child: (_, __) => CardMenuLeftWidget(
                    title: 'github',
                    content: 'Aqui é o github',
                    itemsCardContent:
                        ItemsCardContentExample.itemsCardContentGithub,
                  ),
                )
              ],
            ),
            ChildRoute(
              '/tecnologias_utilizadas',
              child: (_, __) => MenuLeftWidget(
                title: 'tecnologias utilizadas',
                itemsLeftMenu: ItemsLeftMenuExample.itemsLeftMenuTech,
              ),
              children: [
                ChildRoute(
                  '/clean_arch',
                  child: (_, __) => const CardMenuLeftWidget(
                    title: 'aquiterura limpa',
                    content: 'Um dos nossos princípios ....',
                  ),
                ),
                ChildRoute(
                  '/back',
                  child: (_, __) => const CardMenuLeftWidget(
                    title: '[back] arquiterura de microsserviços',
                    content: 'Toda malha de backends',
                  ),
                ),
                ChildRoute(
                  '/front',
                  child: (_, __) => const CardMenuLeftWidget(
                    title: '[front] flutter',
                    content: 'Flutter é uma Ui toolkit',
                  ),
                ),
                ChildRoute(
                  '/sre',
                  child: (_, __) => const CardMenuLeftWidget(
                    title: '[sre] helm',
                    content: 'É um package manager para o kubernetes',
                  ),
                )
              ],
            ),
            ChildRoute(
              '/materiais_de_estudos',
              child: (_, __) => MenuLeftWidget(
                  title: 'materias de estudo',
                  itemsLeftMenu: ItemsLeftMenuExample.itemsLeftMenuStudy),
              children: [
                ChildRoute(
                  '/clean_arch',
                  child: (_, __) => const CardMenuLeftWidget(
                    title: 'aquiterura limpa',
                    content: 'Um dos nossos princípios ....',
                  ),
                ),
                ChildRoute(
                  '/sre',
                  child: (_, __) => const CardMenuLeftWidget(
                    title: 'sre',
                    content: 'Sre malha de backends',
                  ),
                ),
                ChildRoute(
                  '/flutter',
                  child: (_, __) => const CardMenuLeftWidget(
                    title: 'flutter',
                    content: 'Flutter é uma Ui toolkit',
                  ),
                ),
                ChildRoute(
                  '/docker',
                  child: (_, __) => const CardMenuLeftWidget(
                    title: 'docker',
                    content: 'É um package manager para o kubernetes',
                  ),
                ),
              ],
            ),
            ChildRoute('/glossary', child: (_, __) => Container()),
          ],
        ),
      ];
}
