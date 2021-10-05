import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:poc_portal/app/modules/menu_content/pages/menu_content_page.dart';

class MenuContentModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const MenuContentPage(),
          transition: TransitionType.fadeIn,
          children: [
            ChildRoute('/red',
                child: (_, __) => Container(
                  color: Colors.red,
                )),
            ChildRoute('/blue',
                child: (_, __) => Container(
                  color: Colors.blue,
                )),
          ]
        ),
      ];
}
