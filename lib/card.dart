import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SinifCard extends StatelessWidget {
  SinifCard(this.metin);

  final metin;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(children: [Text(metin, style: TextStyle(color: Colors.red, fontSize: 26),)],),
      ),
    );
  }
}

