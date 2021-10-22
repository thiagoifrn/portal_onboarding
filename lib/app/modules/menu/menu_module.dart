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
                ),
                ChildRoute(
                  '/vpn',
                  child: (_, __) => CardMenuLeftWidget(
                    title: 'vpn',
                    content: 'Aqui é o github',
                    itemsCardContent:
                        ItemsCardContentExample.itemsCardContentVPN,
                  ),
                ),
                ChildRoute(
                  '/aws',
                  child: (_, __) => CardMenuLeftWidget(
                    title: 'aws',
                    content: 'Aqui é o github',
                    itemsCardContent:
                        ItemsCardContentExample.itemsCardContentAWS,
                  ),
                ),
                ChildRoute(
                  '/shortcut',
                  child: (_, __) => CardMenuLeftWidget(
                    title: 'shortcut',
                    content: 'Aqui é o github',
                    itemsCardContent:
                        ItemsCardContentExample.itemsCardContentShortcut,
                  ),
                ),
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
                  child: (_, __) => CardMenuLeftWidget(
                    title: 'aquiterura limpa',
                    content: 'Um dos nossos princípios ....',
                    itemsCardContent:
                        ItemsCardContentExample.itemsCardContentCleanArch,
                  ),
                ),
                ChildRoute(
                  '/back',
                  child: (_, __) => CardMenuLeftWidget(
                    title: '[back] arquiterura de microsserviços',
                    content: 'Toda malha de backends',
                    itemsCardContent:
                        ItemsCardContentExample.itemsCardContentBack,
                  ),
                ),
                ChildRoute(
                  '/front',
                  child: (_, __) => CardMenuLeftWidget(
                    title: '[front] flutter',
                    content: 'Flutter é uma Ui toolkit',
                    itemsCardContent:
                        ItemsCardContentExample.itemsCardContentFront,
                  ),
                ),
                ChildRoute(
                  '/sre',
                  child: (_, __) => CardMenuLeftWidget(
                    title: '[sre] helm',
                    content: 'É um package manager para o kubernetes',
                    itemsCardContent:
                        ItemsCardContentExample.itemsCardContentSRE,
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
                  child: (_, __) => CardMenuLeftWidget(
                    title: 'aquiterura limpa',
                    content: 'Um dos nossos princípios ....',
                    itemsCardContent:
                        ItemsCardContentExample.itemsCardContentCleanArch,
                  ),
                ),
                ChildRoute(
                  '/sre',
                  child: (_, __) => CardMenuLeftWidget(
                    title: 'sre',
                    content: 'Sre malha de backends',
                    itemsCardContent:
                        ItemsCardContentExample.itemsCardContentSRE,
                  ),
                ),
                ChildRoute(
                  '/flutter',
                  child: (_, __) => CardMenuLeftWidget(
                    title: 'flutter',
                    content: 'Flutter é uma Ui toolkit',
                    itemsCardContent:
                        ItemsCardContentExample.itemsCardContentFlutter,
                  ),
                ),
                ChildRoute(
                  '/docker',
                  child: (_, __) => CardMenuLeftWidget(
                    title: 'docker',
                    content: 'É um package manager para o kubernetes',
                    itemsCardContent:
                        ItemsCardContentExample.itemsCardContentDocker,
                  ),
                ),
              ],
            ),
            ChildRoute('/glossary', child: (_, __) => Container()),
          ],
        ),
      ];
}
