import 'package:flutter_modular/flutter_modular.dart';

import 'models/items_left_menu.model.dart';
import 'pages/card_menu_left_widget.dart';
import 'pages/menu_content_widget.dart';
import 'pages/menu_left_widget.dart';

class MenuModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  static final itemsLeftMenuFirstSteps = [
    ItemsLeftMenuModel(title: 'jira', path: './jira'),
    ItemsLeftMenuModel(title: 'gitbook', path: './gitbook'),
    ItemsLeftMenuModel(title: 'github', path: './github'),
  ];
  static final itemsLeftMenuTech = [
    ItemsLeftMenuModel(title: 'arquiterura limpa', path: './clean_arch'),
    ItemsLeftMenuModel(title: 'back', path: './back'),
    ItemsLeftMenuModel(title: 'front', path: './front'),
    ItemsLeftMenuModel(title: 'sre', path: './sre'),
  ];

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
                itemsLeftMenu: itemsLeftMenuFirstSteps,
              ),
              children: [
                ChildRoute(
                  '/jira',
                  child: (_, __) => const CardMenuLeftWidget(
                    title: 'jira',
                    content: 'Jira é uma ferramente top, só vcs vendo',
                  ),
                ),
                ChildRoute(
                  '/gitbook',
                  child: (_, __) => const CardMenuLeftWidget(
                    title: 'gitbook',
                    content: 'Aqui é o gitbook',
                  ),
                ),
                ChildRoute(
                  '/github',
                  child: (_, __) => const CardMenuLeftWidget(
                    title: 'github',
                    content: 'Aqui é o github',
                  ),
                )
              ],
            ),
            ChildRoute(
              '/tecnologias_utilizadas',
              child: (_, __) => MenuLeftWidget(
                title: 'tecnologias utilizadas',
                itemsLeftMenu: itemsLeftMenuTech,
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
            )
          ],
        ),
      ];
}
