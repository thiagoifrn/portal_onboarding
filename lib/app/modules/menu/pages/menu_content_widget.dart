import 'package:flutter/material.dart';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:poc_portal/app/modules/menu/examples/menu_top_example.dart';
import 'package:poc_portal/app/utils/all_colors.dart';

class MenuContentWidget extends StatefulWidget {
  const MenuContentWidget({Key? key}) : super(key: key);

  @override
  _MenuContentWidgetState createState() => _MenuContentWidgetState();
}

class _MenuContentWidgetState extends State<MenuContentWidget> {
  late int initialIndexTabBar;
  @override
  void initState() {
    super.initState();
    initialIndexTabBar = switchTabForPath();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: initialIndexTabBar,
      length: MenuTopExample.menuTopList.length,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight * 2),
          child: AppBar(
            backgroundColor: AllColors.brandPrimary100,
            bottom: TabBar(
              padding: const EdgeInsets.symmetric(horizontal: 58),
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
                    Modular.to
                        .navigate('/menu/materiais_de_estudos/clean_arch');
                    break;
                  case 4:
                    Modular.to.navigate('/menu/glossary');
                    break;
                  default:
                }
              },
              tabs: MenuTopExample.menuTopList.map((e) {
                return e.image != null
                    ? Container(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: Image.asset(
                          e.image!,
                          height: 53,
                          width: 276,
                        ))
                    : Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: Text(
                          e.title!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        ),
                      );
              }).toList(),
            ),
          ),
        ),
        body: RouterOutlet(),
      ),
    );
  }

  int switchTabForPath() {
    if (Modular.to.path.endsWith('/jira')) {
      return 1;
    } else if (Modular.to.path.endsWith('/tecnologias_utilizadas/clean_arch')) {
      return 2;
    } else if (Modular.to.path.endsWith('/materiais_de_estudos/clean_arch')) {
      return 3;
    } else if (Modular.to.path.endsWith('/glossary')) {
      return 4;
    }
    return 0;
  }
}
