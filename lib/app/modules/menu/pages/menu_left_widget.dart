import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:poc_portal/app/modules/menu/models/items_left_menu_model.dart';

class MenuLeftWidget extends StatelessWidget {
  final String title;
  final List<ItemsLeftMenuModel> itemsLeftMenu;
  const MenuLeftWidget(
      {Key? key, required this.title, required this.itemsLeftMenu})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        color: const Color(0XFFE5E5E5),
        child: Column(
          children: [
            //Text(title),
            SizedBox(
              height: constraints.maxHeight,
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: ListView(
                      shrinkWrap: true,
                      children: itemsLeftMenu
                          .map(
                            (e) => Card(
                              elevation: 1,
                              child: ListTile(
                                title: SizedBox(
                                  width: 279,
                                  height: 81,
                                  child: Center(
                                    child: Text(
                                      e.title,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                onTap: () => Modular.to.navigate(e.path),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  Flexible(
                    flex: 3,
                    child: RouterOutlet(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
