import 'package:flutter/material.dart';

import 'model/profil.dart';

class ProfilDuzenlemeEkrani extends StatefulWidget {
    Profil _profil = new Profil.empty();
    @override
    _ProfilDuzenlemeEkraniState createState() => _ProfilDuzenlemeEkraniState();
}

class _ProfilDuzenlemeEkraniState extends State<ProfilDuzenlemeEkrani> {
    final _formKey = GlobalKey<FormState>();
    final _scaffoldKey = GlobalKey<ScaffoldState>();

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            key: _scaffoldKey,
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
                            ),
                            ListTile(
                                leading: Icon(Icons.person),
                                title: TextFormField(
                                    maxLength: 25,
                                    decoration: InputDecoration(
                                        labelText: 'Adres',
                                        hintText: 'Adres',
                                        labelStyle: TextStyle(color: Colors.grey),
                                        focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.green))),
                                    validator: (value){
                                        if(value.trim().length == 0){
                                            return 'Adres boş bırakılamaz';
                                        }
                                        else{
                                            return null;
                                        }
                                    },
                                    onSaved: (value){
                                        widget._profil.adres = value;
                                    },
                                ),
                            ),
                            ListTile(
                                leading: Icon(Icons.person),
                                title: TextFormField(
                                    maxLength: 25,
                                    decoration: InputDecoration(
                                        labelText: 'Kurum',
                                        hintText: 'Kurum',
                                        labelStyle: TextStyle(color: Colors.grey),
                                        focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.green))),
                                    validator: (value){
                                        if(value.trim().length == 0){
                                            return 'Kurum boş bırakılamaz';
                                        }
                                        else{
                                            return null;
                                        }
                                    },
                                    onSaved: (value){
                                        widget._profil.kurum = value;
                                    },
                                ),
                            ),
                            ListTile(
                                leading: Icon(Icons.email),
                                title: TextFormField(
                                    maxLength: 25,
                                    decoration: InputDecoration(
                                        labelText: 'Email',
                                        hintText: 'Email',
                                        labelStyle: TextStyle(color: Colors.grey),
                                        focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.green))),
                                    validator: (value){
                                        if(value.trim().length == 0){
                                            return 'Email boş bırakılamaz';
                                        }
                                        else{
                                            return null;
                                        }
                                    },
                                    onSaved: (value){
                                        widget._profil.email = value;
                                    },
                                ),
                            ),
                            RaisedButton(
                                child: Text('Kaydet'),
                                onPressed: () {
                                if(_formKey.currentState.validate()){
                                    veriyiKaydet(widget._profil);
                                }
                            },

                            )

                        ],
                    ),
                ),
            ),
        );
    }

  void veriyiKaydet(Profil profil) {
      _scaffoldKey.currentState.showSnackBar(SnackBar(
          content: Text('Kaydedildi!'),
          duration: Duration(milliseconds: 500),
      ));
  }
}
