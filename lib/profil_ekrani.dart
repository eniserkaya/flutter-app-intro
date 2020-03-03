import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_app_ders1/profil_duzenleme_ekrani.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'container_ekrani.dart';
import 'gezdigim_yerler.dart';
import 'model/profil.dart';

class ProfilEkrani extends StatefulWidget {
  Profil _profil = new Profil.empty();

  @override
  _ProfilEkraniState createState() => _ProfilEkraniState();
}

class _ProfilEkraniState extends State<ProfilEkrani> {
  @override
  void initState() {
    profilVerisiniGetir().then((onValue) {
      var decodedJson = json.decode(onValue);
      widget._profil = Profil.fromJson(decodedJson);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        actions: <Widget>[
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProfilDuzenlemeEkrani()),
                ).then((onValue){
                  profilVerisiniGetir().then((onValue) {
                    var decodedJson = json.decode(onValue);
                    widget._profil = Profil.fromJson(decodedJson);
                  });
                });
              },
              child: Icon(Icons.edit)),
          IconButton(icon: Icon(Icons.directions_bus), onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => GezdigimYerlerEkrani()),
            );
          },)
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
              child: widget._profil.filePath != null ? CircleAvatar(
                backgroundImage: FileImage(new File(widget._profil.filePath)),
                radius: 80.0,
              ) : Text('Profil Fotoğrafı'),
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
              widget._profil.adSoyad ?? 'Henüz dolmadı',
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
              widget._profil.adres ?? 'Henüz dolmadı',
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
              widget._profil.kurum ?? 'Henüz dolmadı',
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
                  widget._profil.email ?? 'Henüz dolmadı',
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

  Future<String> profilVerisiniGetir() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('profil');
  }
}
