
import 'package:flutter_app_ders1/model/sehir.dart';
import 'package:json_annotation/json_annotation.dart';

part 'kullanici.g.dart';

@JsonSerializable()
class Kullanici extends Object {
 String ad;
 String soyad;
 List<Sehir> sehirList;

 Kullanici(this.ad, this.soyad, this.sehirList);

 factory Kullanici.fromJson(Map<String,dynamic> json) => _$KullaniciFromJson(json);


}