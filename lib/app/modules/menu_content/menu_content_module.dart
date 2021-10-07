import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:poc_portal/app/modules/menu_content/pages/menu_content_page.dart';
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
              ChildRoute('/first', child: (_, __) => const ListTileContent()),
              ChildRoute('/two',
                  child: (_, __) => Container(
                        color: Colors.teal[50],
                      )),
              ChildRoute('/three',
                  child: (_, __) => Container(
                        color: Colors.amber[50],
                      )),
              ChildRoute('/four',
                  child: (_, __) => Container(
                        color: Colors.deepOrange,
                      )),
            ]),
      ];
}
