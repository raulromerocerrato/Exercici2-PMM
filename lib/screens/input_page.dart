import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _nom = '';
  String _email = '';
  String _data = '';
  TextEditingController _inputFieldDataController = TextEditingController();
  List<String> _paisos = ['Andorra','Espanya','Dinamarca','França'];
  String _pais = 'Andorra';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: [
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearData(context),
          Divider(),
          _crearDropdown(),
          Divider(),
          _crearPersona()
        ],
      ),
    );
  }
  Widget _crearInput() {
    return TextField(
      onChanged: (valor) {
        setState(() {
          _nom = valor;
        });
      },
      decoration: InputDecoration(
        counter: Text('LLetres ${_nom.length}'),
        hintText: 'Nom de l\'usuari',
        labelText: 'Nom',
        helperText: 'Posi el nom complet',
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        )
      ),
    );
  }
  Widget _crearEmail () {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Correu electrònic',
        labelText: 'Correu electrònic',
        helperText: 'exemple@paucasesnovescifp.cat',
        suffixIcon: Icon(Icons.alternate_email),
        icon: Icon(Icons.email)
      ),
      onChanged: (valor) =>
        setState(() {
          _email = valor;
        }
      )
    );
  }
  Widget _crearPassword () {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Password',
        labelText: 'Password',
        suffixIcon: Icon(Icons.lock_open),
        icon: Icon(Icons.lock)
      ),
      onChanged: (valor) {
        //setState(() {
       //   _email = valor;
      //  });
      }
        
    );
  }
  Widget _crearData (BuildContext context) {
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputFieldDataController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Data naixament',
        labelText: 'Data naixament',
        suffixIcon: Icon(Icons.perm_contact_calendar),
        icon: Icon(Icons.calendar_today)
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _seleccionaData(context);
      },
    );
  }
  void _seleccionaData(BuildContext context) async{
    DateTime? picked = await showDatePicker(
      context: context,
      locale: Locale('es','ES'),
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030)
    );
    if(picked != null) {
      setState(() {
        _data = picked.toString();
        _inputFieldDataController.text = _data;
      });
    }
  } 
  Widget _crearDropdown () {
    return Row(
      children: [
        Icon(Icons.language),
        SizedBox(width: 30.0),
        Expanded(
          child: DropdownButton(
            value: _pais,
            items: getOptionDropdown(),
            onChanged: (opcio) {
              setState(() {
                _pais = opcio as String;
              });
            }
          ),
        ),
      ],
    );
  }
  List<DropdownMenuItem<String>> getOptionDropdown() {
    List<DropdownMenuItem<String>> llista = [];
    _paisos.forEach((pais) {
      llista.add(DropdownMenuItem(
        child: Text(pais),
        value: pais,
      ));
    });
    return llista;
  }

  Widget _crearPersona () {
    return ListTile(
      title: Text('Nom: $_nom'),
      subtitle: Text('Correu: $_email'),
      trailing: Text(_pais),
    );
  }
}
