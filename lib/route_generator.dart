import 'package:flutter/material.dart';
import 'package:vridavan/Pages/DashboardScreen.dart';

import 'Pages/ProductDetailsScreen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;
    switch (settings.name) {
      // case '/Onboarding':
      //   return MaterialPageRoute(builder: (_) => const OnboardingScreen());
    case '/DashBoard':
      return MaterialPageRoute(builder: (_) => DashBoard());
      default:
      // If there is no such named route in the switch statement, e.g. /third
        return MaterialPageRoute(builder: (_) => Scaffold(body: SafeArea(child: Text('Route Error'))));
    }
  }
}
