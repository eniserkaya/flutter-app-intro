import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_ders1/model/kullanici.dart';

class GezdigimYerlerEkrani extends StatefulWidget {
  @override
  _GezdigimYerlerEkraniState createState() => _GezdigimYerlerEkraniState();
}

class _GezdigimYerlerEkraniState extends State<GezdigimYerlerEkrani> {
    Kullanici kullanici;
    String gezdigiYerler;
    String kullaniciAd,kullaniciSoyad;

    @override
  void initState() {
    sunucudanVerileriGetir().then((gelenCevap){

        setState(() {
            kullanici = Kullanici.fromJson(json.decode(gelenCevap.data));
        });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('HTTP Request'),),
        body: MyCard(kullanici));
  }

  Future<Response> sunucudanVerileriGetir() async {
        var dio = Dio();
        //createHttpRequestConfig(dio);
        Response response;
        response = await dio.get('https://www.eniserkaya.com/tutorials/flutter/json_parser.php');

        return response;

  }

 /* void createHttpRequestConfig(dio) {
        dio.options.connectTimeOut = 15000;
        dio.options.receiveTimeOut = 15000;
        dio.options.responseType = ResponseType.plain;
  }

  */
}

class MyCard extends StatelessWidget {
    Kullanici kullanici;

    MyCard(this.kullanici);

    @override
  Widget build(BuildContext context) {
        List _children = <Widget>[];
        if(kullanici == null){
            _children.add(Text('Güncelleniyor'));
        }
        else{
            _children.add(Text(kullanici.ad));
            _children.add(Text(kullanici.soyad));
            _children.add(Text(kullanici.gezilenYerler.map((sehir) => sehir.sehirAdi).join(',')));
        }
    // TODO: implement build
    return Card(
        color: Colors.red,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: _children
        ),
    );
  }
}
