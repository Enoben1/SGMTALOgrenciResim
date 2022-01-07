import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ogrenciler extends StatefulWidget {
  ogrenciler(this.sinif, this.sube);

  final sinif;
  final int sube;
  @override
  _ogrencilerState createState() => _ogrencilerState();
}

class _ogrencilerState extends State<ogrenciler> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          Text("data"),
          Expanded(
            child: ListView.builder(itemCount: 5,itemBuilder: (BuildContext ctxt, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(color: Colors.red, child: Text(""),),
              );
            }),
          ),
        ],
      ),
    );
  }
}

class ogrenciler2 extends StatelessWidget {
  ogrenciler2(this.listenumara, this.listeisim);

  final List<String> listenumara;
  final List<String> listeisim;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(itemCount: listenumara.length,itemBuilder: (BuildContext ctxt, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            GestureDetector(onTap: (){
                              showDialog(context: context, builder: (BuildContext context) => new AlertDialog(
                                title: Text(listeisim[index]),
                                content: Container(width: 500, height: 500 ,child: Image.asset("resimler/ogrenciler/" + listenumara[index] + ".JPG")),
                              ));
                            } ,child: Container(width: 100, height: 100 ,child: Image.asset("resimler/ogrenciler/" + listenumara[index] + ".JPG"))),
                            Text(listeisim[index]),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
