import 'package:exercici2_pmm/screens/listview_page.dart';
import 'package:exercici2_pmm/screens/slider_page.dart';
import 'package:flutter/material.dart';
import '../screens/alert_page.dart';
import '../screens/avatar_page.dart';
import '../screens/home_page.dart';
import '../screens/card_page.dart';
import '../screens/animated_container.dart';
import '../screens/input_page.dart';


Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
    'inputs': (BuildContext context) => InputPage(),
    'slider': (BuildContext context) => SliderPage(),
    'list': (BuildContext context) => LlistaPage(),
  };
}