import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:poc_portal/app/modules/menu_content/pages/menu_content_page.dart';
import 'package:poc_portal/app/modules/menu_content/pages/widgets/examples_menu.dart';
import 'package:poc_portal/app/modules/menu_content/pages/widgets/list_tile_content.dart';

class MenuContentModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/',
            child: (context, args) => const MenuContentPage(),
            transition: TransitionType.fadeIn,
            children: [
              ChildRoute('/initial',
                  child: (_, __) => Container(
                        color: Colors.red,
                      )),
              ChildRoute('/primeiros-passos',
                  child: (_, __) => ListTileContent(
                        itemsMenu: ExamplesMenu.itemsMenuFirstStep,
                      )),
              ChildRoute('/tecnologias-utilizadas',
                  child: (_, __) => ListTileContent(
                        itemsMenu: ExamplesMenu.itemsMenuTechs,
                      )),
              ChildRoute('/materiais-de-estudos',
                  child: (_, __) => ListTileContent(
                        itemsMenu: ExamplesMenu.itemsMenuStudyMaterials,
                      )),
              ChildRoute('/glossario',
                  child: (_, __) => ListTileContent(
                        itemsMenu: ExamplesMenu.itemsMenuGlossary,
                      )),
            ]),
      ];
}
