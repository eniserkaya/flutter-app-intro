import 'package:flutter/material.dart';

class ContainerEkrani extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar(),
      body: Container(
          decoration: myBoxDecoration(),
          width: 300.0,
          height: 400.0,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
              buildMyText()
          ],)
      ),
    );
  }

  Text buildMyText() {
    return Text('Merhaba Dünya', style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.0,
                          fontFamily: 'Oxanium'
                      ),);
  }

  myBoxDecoration() {
      return BoxDecoration(
          color: Colors.purple,
          shape: BoxShape.circle
      );
  }
}
myAppBar(){
    return  AppBar(title: Text('Merhaba'),);
}
