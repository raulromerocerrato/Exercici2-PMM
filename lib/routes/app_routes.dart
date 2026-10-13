import 'package:flutter/material.dart';
import '../screens/alert_screen.dart'; // Exporta totes les pantalles des d'un index
import '../screens/animated_container_screen.dart';
import '../screens/avatar_screen.dart';
import '../screens/card_screen.dart';
import '../screens/inputs_screen.dart';
import '../screens/slider_screen.dart';
import '../screens/listview_screen.dart';
import '../screens/home_screen.dart';

class AppRoutes {
  static const initialRoute = '/';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      '/': (BuildContext context) => const HomeScreen(),
      'alert': (BuildContext context) => const AlertScreen(),
      'avatar': (BuildContext context) => const AvatarScreen(),
      'card': (BuildContext context) => const CardScreen(),
      'animatedContainer': (BuildContext context) => const AnimatedContainerScreen(),
      'inputs': (BuildContext context) => const InputsScreen(),
      'slider': (BuildContext context) => const SliderScreen(),
      'list': (BuildContext context) => const ListViewScreen(),
    };
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}