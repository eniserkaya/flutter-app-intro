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
        print(gelenCevap);
        //kullanici = Kullanici.fromJson(json.decode(gelenCevap));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Future<Response> sunucudanVerileriGetir() async {
        var dio = Dio();
        createHttpRequestConfig(dio);
        Response response;
        await dio.get('https://www.eniserkaya.com/tutorials/flutter/json_parser.php').then((resp){
            response = resp;
        });
        return response;
  }

  void createHttpRequestConfig(dio) {
        dio.options.connectTimeOut = 15000;
        dio.options.receiveTimeOut = 15000;
        dio.options.responseType = ResponseType.plain;
  }
}
