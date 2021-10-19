import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:poc_portal/app/modules/menu/models/items_left_menu.model.dart';

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
        color: Colors.red.shade200,
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
                      children: itemsLeftMenu
                          .map(
                            (e) => ElevatedButton(
                              child: Text(e.title),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.blueGrey.shade300),
                              onPressed: () {
                                Modular.to.navigate(e.path);
                              },
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
