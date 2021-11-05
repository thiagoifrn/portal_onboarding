import 'package:flutter_modular/flutter_modular.dart';
import 'package:poc_portal/app/modules/home/home_module.dart';
import 'package:poc_portal/app/splash_page.dart';

import 'menu/menu_module.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const SplashPage()),
        ModuleRoute('/home', module: HomeModule()),
        ModuleRoute('/menu',
            module: MenuModule(), transition: TransitionType.fadeIn),
      ];
}
