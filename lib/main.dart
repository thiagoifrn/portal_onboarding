import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:poc_portal/app/modules/app_module.dart';
import 'package:poc_portal/app/modules/app_widget.dart';

void main() {
  Modular.to.addListener(() {
    // ignore: avoid_print
    print(Modular.to.path);
  });
  return runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}
