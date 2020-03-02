import 'package:flutter/material.dart';

class ContainerEkrani extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Container Example'),),
      body: Container(
          color: Colors.purple,
          width: 300.0,
          height: 400.0,
          child: ListView(
            children: <Widget>[
                Column(
                    children: <Widget>[
                        Text('Merhaba Dünya')
                    ],
                ),
            ],
          ),
      ),
    );
  }
}
