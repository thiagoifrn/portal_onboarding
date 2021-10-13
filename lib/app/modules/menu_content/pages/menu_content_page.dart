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
      initialIndex: 1,
      length: 5,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0Xff23232E),
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
                Modular.to.navigate('./primeiros_passos');
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
            SizedBox(
              width: 276,
              height: 52,
              child: Center(
                child: Text(
                  'Home Page',
                  style: TextStyle(
                    color: Color(0XFFFFFFFF),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 176,
              height: 53,
              child: Center(
                child: Text(
                  'primeiros passos e\n\n acessos',
                  style: TextStyle(
                    color: Color(0XFFFFFFFF),
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              width: 276,
              height: 52,
              child: Center(
                child: Text(
                  'tecnologias\n\n utilizadas',
                  style: TextStyle(
                    color: Color(0XFFFFFFFF),
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Center(
              child: Text(
                'materiais de\n\n estudo',
                style: TextStyle(
                  color: Color(0XFFFFFFFF),
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Center(
              child: Text(
                'glossário',
                style: TextStyle(
                  color: Color(0XFFFFFFFF),
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
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
