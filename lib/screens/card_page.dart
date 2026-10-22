import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children:[
          _cardTipus1(),
          SizedBox(height: 30.0),
          _cardTipus2(),
          SizedBox(height: 30.0),
          _cardTipus1(),
          SizedBox(height: 30.0),
          _cardTipus2(),
          SizedBox(height: 30.0),
          _cardTipus1(),
          SizedBox(height: 30.0),
          _cardTipus2(),
          SizedBox(height: 30.0),
          _cardTipus1(),
          SizedBox(height: 30.0),
          _cardTipus2(),
          SizedBox(height: 30.0),
        ]
      )
    );
  }

  Widget _cardTipus1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0), side: BorderSide(color: Colors.blue, width: 2.0)),
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Títol de la targeta'),
            subtitle: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec a diam lectus. Sed sit amet ipsum mauris. Maecenas congue ligula ac quam viverra nec consectetur ante hendrerit. Donec et mollis dolor.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(onPressed: () {}, child: Text('OK')),
              TextButton(onPressed: () {}, child: Text('Cancelar')),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipus2() {
    final targeta = Container(
      // clipBehavior: Clip.antiAlias,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0), side: BorderSide(color: Colors.blue, width: 2.0)),
      child: Column(
        children: [
          /*Image(
            image: NetworkImage('https://fastly.picsum.photos/id/237/600/300.jpg?hmac=iRVPLLVQxFogSDvoPLrs3stJmz9g636YRQiWCDrU5MM'),
          ),*/
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage('https://fastly.picsum.photos/id/237/600/300.jpg?hmac=iRVPLLVQxFogSDvoPLrs3stJmz9g636YRQiWCDrU5MM'),
            fadeInDuration: Duration(milliseconds: 100),
            height: 250.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Titol de la imatge'),
          ),
        ],
      ),
    );
    return Container(
      child: ClipRRect(
        child: targeta,
        borderRadius: BorderRadius.circular(30.0),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0),
          )
        ],
        color: Colors.red,
      )
    );
  }  
}