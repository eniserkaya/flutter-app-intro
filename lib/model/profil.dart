import 'package:json_annotation/json_annotation.dart';

part 'profil.g.dart';

@JsonSerializable()
class Profil extends Object {
    String adSoyad;
    String adres;
    String kurum;
    String email;
    String filePath;

    Profil(this.adSoyad, this.adres, this.kurum, this.email, this.filePath);

    factory Profil.fromJson(Map<String,dynamic> json) => _$ProfilFromJson(json);
    Map<String,dynamic> toJson() => _$ProfilToJson(this);

}