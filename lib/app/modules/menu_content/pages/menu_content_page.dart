import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:poc_portal/app/utils/all_colors.dart';

class MenuContentPage extends StatefulWidget {
  const MenuContentPage({Key? key}) : super(key: key);

  @override
  State<MenuContentPage> createState() => _MenuContentPageState();
}

class _MenuContentPageState extends State<MenuContentPage>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      initialIndex: 0,
      length: 2,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          labelColor: AllColors.brandPrimary100,
          indicatorColor: AllColors.light10,
          unselectedLabelColor: AllColors.light10,
          controller: tabController,
          onTap: (value) {
            switch (value) {
              case 1:
                break;
            }
            if (value == 1) {
              Modular.to.pushNamed('/home/');
            } else {
              Modular.to.navigate('./blue');
            }
          },
          tabs: const [
            Text('primeiros passos'),
            Text('tecnologias utilizadas'),
          ],
        ),
      ),
      body: RouterOutlet(),
    );
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
}
