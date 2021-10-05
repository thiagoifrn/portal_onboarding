import 'dart:async';

import 'package:flutter_modular/flutter_modular.dart';

class HomeGuard extends RouteGuard {
  HomeGuard() : super(redirectTo: '/home');
  @override
  FutureOr<bool> canActivate(String path, ParallelRoute route) async {
    return true;
  }
}
