import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:poc_portal/app/modules/menu/examples/menu_top_example.dart';

class MenuContentWidget extends StatefulWidget {
  const MenuContentWidget({Key? key}) : super(key: key);

  @override
  _MenuContentWidgetState createState() => _MenuContentWidgetState();
}

class _MenuContentWidgetState extends State<MenuContentWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: MenuTopExample.menuTopList.length,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            onTap: (value) {
              switch (value) {
                case 0:
                  Modular.to.navigate('/home/');
                  break;
                case 1:
                  Modular.to.navigate('/menu/primeiros_passos/jira');
                  break;
                case 2:
                  Modular.to
                      .navigate('/menu/tecnologias_utilizadas/clean_arch');
                  break;
                case 3:
                  Modular.to.navigate('/menu/materiais-de-estudos/clean_arch');
                  break;
                case 4:
                  Modular.to.navigate('/menu/glossario');
                  break;
                default:
              }
            },
            tabs: MenuTopExample.menuTopList.map((e) => Text(e.title)).toList(),
          ),
        ),
        body: RouterOutlet(),
      ),
    );
  }
}
