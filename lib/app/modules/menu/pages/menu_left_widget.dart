import 'package:flutter/cupertino.dart';
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 28),
                child: Text(
                  title,
                  style: const TextStyle(
                      fontSize: 36, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: constraints.maxHeight,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      flex: 1,
                      child: ListView(
                        shrinkWrap: true,
                        children: itemsLeftMenu
                            .map(
                              (e) => Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 32),
                                child: Card(
                                  color: Modular.to.path.endsWith(
                                          '/menu/primeiros_passos/jira')
                                      ? const Color(0XFF353545)
                                      : Colors.red,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
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
                                    onTap: () {
                                      Modular.to.navigate(e.path);
                                    },
                                  ),
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
      ),
    );
  }
}
