import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

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
        bottom:TabBar(
          labelColor: const Color.fromRGBO(4, 2, 46, 1),
          indicatorColor: const Color.fromRGBO(4, 2, 46, 1),
          unselectedLabelColor: Colors.grey,
          controller: tabController,
          onTap: (value) {
            switch(value) {
              case 1:
                break;
            }
            if(value == 1) {
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
