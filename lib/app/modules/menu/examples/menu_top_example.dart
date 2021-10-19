import 'package:poc_portal/app/modules/menu/models/items_top_menu_model.dart';

class MenuTopExample {
  static final List<MenuTop> menuTopList = [
    MenuTop(title: 'home', path: '/home/'),
    MenuTop(title: 'primeiros passos', path: '/menu/primeiros_passos/jira'),
    MenuTop(
        title: 'tecnologias utilizadas',
        path: '/menu/tecnologias_utilizadas/clean_arch'),
    MenuTop(title: 'materiais de estudo', path: '/menu/materiais_de_estudos'),
    MenuTop(title: 'glossário', path: '/menu/glossario'),
  ];
}
