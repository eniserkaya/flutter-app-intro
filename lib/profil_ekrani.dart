import 'package:flutter/material.dart';
import 'package:flutter_app_ders1/profil_duzenleme_ekrani.dart';

import 'container_ekrani.dart';

class ProfilEkrani extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        actions: <Widget>[
            GestureDetector(
                onTap: (){
                    Navigator.push( context, MaterialPageRoute(builder: (context) => ProfilDuzenlemeEkrani()), );
                },
                child: Icon(Icons.edit))
        ],
        title: Text('Profil'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://avatars3.githubusercontent.com/u/11557604?s=460&v=4'),
                radius: 80.0,
              ),
            ),
            Divider(
              color: Colors.grey[200],
              height: 60.0,
            ),
            Text(
              'Ad Soyad',
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Ahmed Enis Erkaya',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 28.0),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'Adres',
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Ankara/Türkiye',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 28.0),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'Kurum',
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'YTE',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 28.0),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.mail,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'enis.erkaya@tubitak.gov.tr',
                  style: TextStyle(
                      color: Colors.amberAccent[200],
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
