import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final elements = ['Element 1', 'Element 2', 'Element 3', 'Element 4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components Temp'),
      ),
      body: ListView(
        children: _crearElementsCurt()
      ),
    );
  }

  List<Widget> _crearElements() {
    List<Widget> llista = [];
    for (String element in elements) {
      final tempWidget = ListTile(
        title: Text(element),
      );
      llista.add(tempWidget);
      llista.add(Divider());
    }
    return llista;
  }
  List<Widget> _crearElementsCurt() {
    var widgets = elements.map((element) {
      return Column(
        children: [
          ListTile(
            title: Text(element + '!'),
            subtitle: Text('Subtítulo del elemento'),
            leading: Icon(Icons.account_circle),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              print('Has pulsado $element');
            },
          ),
          Divider(),
        ],
      );
    });

    return widgets.toList();
  }
}