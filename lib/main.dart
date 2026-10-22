import 'package:flutter/material.dart';
import 'routes/routes.dart';
import 'screens/alert_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: [
        Locale('es',''),
        Locale('en',''),
      ],
      debugShowCheckedModeBanner: false,
      title: 'Components',
      initialRoute: '/',
      routes: getRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        print('Hem anat a: ${settings.name}');
        return MaterialPageRoute(
          builder: (BuildContext context) => AlertPage(),
        );
      },
    );
  }
}