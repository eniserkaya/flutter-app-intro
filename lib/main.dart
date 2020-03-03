import 'package:flutter/material.dart';
import 'package:flutter_app_ders1/profil_ekrani.dart';

import 'container_ekrani.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: ProfilEkrani(),
));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'İlk Uygulama',
      home: ContainerEkrani(),
    );
  }
}

class IlkEkran extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('İlk Uygulama'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              'Eğitime Hoşgeldiniz',
              style: TextStyle(fontSize: 40.0),
            ),
            RaisedButton(
                onPressed: () {
                  print('Raised Button');
                },
                child: Text('Raised Button Örneği'),
                textColor: Colors.amber,
                highlightColor: Colors.black,
                padding: EdgeInsets.all(8.0),
                color: Colors.blue)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('TIKLANDI');
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text('S'),
                )
              ],
              accountName: Text('Enis'),
              accountEmail: Text('enis.erkaya@tubitak.gov.tr'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.purple,
                child: Text('Deneme'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
