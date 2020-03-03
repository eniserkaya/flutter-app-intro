import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class RehberEkrani extends StatefulWidget {
  @override
  _RehberEkraniState createState() => _RehberEkraniState();
}

class _RehberEkraniState extends State<RehberEkrani> {
  List _rehberList = new List();
  @override
  void initState() {
    izinIste().then((izinVerildiMi){
      if(izinVerildiMi){
        rehberiGetir().then((rehber){
          var rehberList = rehber.toList();
          setState(() {
            _rehberList = rehberList;
          });
        });
      }

    });

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Future<bool> izinIste() async {
    var result = await PermissionHandler().requestPermissions([PermissionGroup.contacts]);
    if(result[PermissionGroup.contacts] == PermissionStatus.granted){
      return true;
    }
    else{
      return false;
    }
  }


  Future<Iterable<Contact>>rehberiGetir() async {
    Iterable<Contact> contacts = await ContactsService.getContacts();
    return contacts;
  }


}
