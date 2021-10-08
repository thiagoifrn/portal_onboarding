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
      length: 5,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          labelColor: const Color.fromRGBO(4, 2, 46, 1),
          indicatorColor: Colors.white,
          unselectedLabelColor: Colors.grey,
          controller: tabController,
          onTap: (value) {
            switch (value) {
              case 0:
                Modular.to.navigate('/home/');
                break;
              case 1:
                Modular.to.navigate('./primeiros-passos');
                break;
              case 2:
                Modular.to.navigate('./tecnologias-utilizadas');
                break;
              case 3:
                Modular.to.navigate('./materiais-de-estudos');
                break;
              case 4:
                Modular.to.navigate('./glossario');
                break;
              default:
            }
          },
          tabs: const [
            Text(
              'Home Page',
              style: TextStyle(
                color: Color(0XFFFFFFFF),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Primeiros passos e acessos',
              style: TextStyle(
                color: Color(0XFFFFFFFF),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'tecnologias utilizadas',
              style: TextStyle(
                color: Color(0XFFFFFFFF),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'materiais de estudo',
              style: TextStyle(
                color: Color(0XFFFFFFFF),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'glossário',
              style: TextStyle(
                color: Color(0XFFFFFFFF),
                fontWeight: FontWeight.bold,
              ),
            ),
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
