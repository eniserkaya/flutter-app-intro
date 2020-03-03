import 'package:flutter/material.dart';

import 'model/profil.dart';

class ProfilDuzenlemeEkrani extends StatefulWidget {
    Profil _profil = new Profil.empty();
    @override
    _ProfilDuzenlemeEkraniState createState() => _ProfilDuzenlemeEkraniState();
}

class _ProfilDuzenlemeEkraniState extends State<ProfilDuzenlemeEkrani> {
    final _formKey = GlobalKey<FormState>();

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Profil Düzenleme'),
                centerTitle: true,
                backgroundColor: Colors.grey[850],
                elevation: 0.0,
            ),
            body: Form(
                key: _formKey,
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
                    child: ListView(
                        children: <Widget>[
                            ListTile(
                                leading: Icon(Icons.person),
                                title: TextFormField(
                                    maxLength: 25,
                                    decoration: InputDecoration(
                                        labelText: 'Ad Soyad',
                                        hintText: 'Ad Soyad',
                                        labelStyle: TextStyle(color: Colors.grey),
                                        focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.green))),
                                    validator: (value){
                                        if(value.trim().length == 0){
                                            return 'Ad Soyad boş bırakılamaz';
                                        }
                                        else{
                                            return null;
                                        }
                                    },
                                    onSaved: (value){
                                        widget._profil.adSoyad = value;
                                    },
                                ),
                            )
                        ],
                    ),
                ),
            ),
        );
    }
}
