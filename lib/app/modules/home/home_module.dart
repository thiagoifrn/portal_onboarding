import 'package:flutter_modular/flutter_modular.dart';
import 'package:poc_portal/app/modules/home/pages/home_page.dart';
import 'package:poc_portal/app/modules/menu/menu_module.dart';

class HomeModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const HomePage(),
        ),
        ModuleRoute('/menu', module: MenuModule()),
      ];
}
