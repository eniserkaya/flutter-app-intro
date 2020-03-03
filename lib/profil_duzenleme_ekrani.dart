import 'package:flutter/material.dart';

class ProfilDuzenlemeEkrani extends StatefulWidget {
  @override
  _ProfilDuzenlemeEkraniState createState() => _ProfilDuzenlemeEkraniState();
}

class _ProfilDuzenlemeEkraniState extends State<ProfilDuzenlemeEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Düzenleme'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
    );
  }
}
