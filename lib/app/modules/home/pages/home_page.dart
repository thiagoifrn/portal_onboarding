import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:poc_portal/app/utils/all_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: AllColors.brandPrimary100,
            height: 120,
            width: MediaQuery.of(context).size.width,
            child: Center(child: Image.asset('images/Hello.png')),
          ),
          const SizedBox(height: 50),
          const Text(
            'Bem vindo ao Portal Dev Onboarding',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              getCardHome(
                  route: '/menu/primeiros_passos/jira',
                  pathImage: "images/acessos.png",
                  title: "ACESSOS".toLowerCase()),
              getCardHome(
                  route: '/menu/tecnologias_utilizadas/clean_arch',
                  pathImage: "images/tecnologia.png",
                  title: "TECNOLOGIAS UTILIZADAS".toLowerCase()),
              getCardHome(
                  route: '/menu/materiais_de_estudos/clean_arch',
                  pathImage: "images/conhecimento.png",
                  title: "MATERIAIS DE ESTUDO".toLowerCase()),
              getCardHome(
                  route: '/menu/glossary',
                  pathImage: "images/glossario.png",
                  title: "GLOSSÁRIO".toLowerCase()),
            ],
          ),
        ],
      ),
    );
  }

  Card getCardHome({
    required String route,
    required String pathImage,
    required String title,
  }) {
    return Card(
      elevation: 5,
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          Modular.to.navigate(route);
        },
        child: SizedBox(
          height: 132,
          width: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    pathImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                title,
                overflow: TextOverflow.fade,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
