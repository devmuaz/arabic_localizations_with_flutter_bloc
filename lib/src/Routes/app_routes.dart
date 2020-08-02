import 'package:flutter/material.dart';
import '../Views/views.dart';

class AppRoutes {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => MainView());
        break;
      default:
        return null;
    }
  }

  static Route onUnkownRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (_) => UnknownView());
  }
}
