import 'package:flutter/material.dart';
import '../screens/alert_page.dart';
import '../screens/avatar_page.dart';
import '../screens/home_page.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
  };
}