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
            onPressed: () =>
                Modular.to.navigate('/menu_content/primeiros_passos'),
            child: const Text('entrar no menu'),
          )
        ],
      ),
    );
  }
}
