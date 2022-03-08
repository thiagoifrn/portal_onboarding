import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Home Page'),
        ),
      ),
      body: Column(
        children: [
          const Text('Bem vindo ao Portal Dev Iupper'),
          ElevatedButton(
            onPressed: () => Modular.to.navigate('/menu/primeiros_passos/jira'),
            child: const Text('Primeiros passos'),
          ),
          ElevatedButton(
            onPressed: () =>
                Modular.to.navigate('/menu/tecnologias_utilizadas/clean_arch'),
            child: const Text('tecnologias'),
          ),
          ElevatedButton(
            onPressed: () =>
                Modular.to.navigate('/menu/materiais_de_estudos/clean_arch'),
            child: const Text('materiais de estudo'),
          ),
          ElevatedButton(
            onPressed: () => Modular.to.navigate('/menu/glossary'),
            child: const Text('glossário'),
          )
        ],
      ),
    );
  }
}
