import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:poc_portal/app/modules/menu/models/items_left_menu_model.dart';
import 'package:poc_portal/app/utils/all_colors.dart';

class MenuLeftWidget extends StatefulWidget {
  final String title;
  final List<ItemsLeftMenuModel> itemsLeftMenu;
  const MenuLeftWidget(
      {Key? key, required this.title, required this.itemsLeftMenu})
      : super(key: key);

  @override
  State<MenuLeftWidget> createState() => _MenuLeftWidgetState();
}

class _MenuLeftWidgetState extends State<MenuLeftWidget> {
  int selectedIndex = 0;

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
                  widget.title,
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
                      child: ListView.builder(
                          itemCount: widget.itemsLeftMenu.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 32),
                              child: Card(
                                color: selectedIndex == index
                                    ? AllColors.brandPrimary80
                                    : null,
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
                                        widget.itemsLeftMenu[index].title,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: selectedIndex == index
                                              ? AllColors.light10
                                              : AllColors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                  onTap: () {
                                    Modular.to.navigate(
                                        widget.itemsLeftMenu[index].path);
                                    setState(() {
                                      selectedIndex = index;
                                    });
                                  },
                                ),
                              ),
                            );
                          }),
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
