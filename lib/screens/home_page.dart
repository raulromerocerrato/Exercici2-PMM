import 'package:flutter/material.dart';
import '../providers/menu_providers.dart';
import '../utils/icono_string_utils.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.carregarDades(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        print('builder');
        print(snapshot.data);
        return ListView(
          children: _listaElements(snapshot.data),
        );
      },
    );
  }

  List<Widget> _listaElements(List<dynamic>? data) {
    final List<Widget> elements = [];

    data?.forEach((element) {
      final widgetTemp = ListTile(
        title: Text(element['texte']),
        leading: getIcon(element['icona']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {},
      );
      elements
        ..add(widgetTemp)
        ..add(Divider());
    });

    return elements;
  }
}