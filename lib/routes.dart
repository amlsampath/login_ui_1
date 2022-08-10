import 'package:flutter/material.dart';
import 'package:login_ui/ui/login/login.dart';
import 'package:login_ui/ui/registration/registration.dart';
import 'package:login_ui/ui/welcome/welcome.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  print(settings.name);
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(settings: settings, builder: (context) => const Welcome());
    case '/login':
      return MaterialPageRoute(settings: settings, builder: (context) => const Login());
    case '/registration':
      return MaterialPageRoute(settings: settings, builder: (context) => const Registration());

    default:
      return MaterialPageRoute(settings: settings, builder: (context) => const Registration());
  }
}
