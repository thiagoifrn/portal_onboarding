import 'package:flutter_modular/flutter_modular.dart';
import 'package:poc_portal/app/modules/home/home_module.dart';
import 'package:poc_portal/app/modules/home/pages/home_page.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const HomePage()),
        ModuleRoute('/home', module: HomeModule()),
      ];
}
