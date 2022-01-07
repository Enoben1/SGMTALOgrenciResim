import 'package:flutter/material.dart';

import 'card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<String> sinif9 = ["9/A", "9/B", "9/D"];
  List<String> sinif10 = ["10/A", "10/B", "10/C", "10/D"];
  List<String> sinif11 = ["11/A", "11/B", "11/C", "11/D"];
  List<String> sinif12 = ["12/A", "12/B", "12/C", "12/D"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sabiha Gökçen MTAL Öğrenci Resimleri"),),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 5.0, top: 12.0),
              child: Text(
                '9. Sınıflar',
                style: TextStyle(fontSize: 26),
              ),
            ),
            SizedBox(
              height: 200.0,
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: sinif9.length,
                itemBuilder: (BuildContext context, int index) => Card(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Center(child: Row(
                      children: [
                        Text(sinif9[index] + " Sınıfı", style: TextStyle(fontSize: 23),),
                      ],
                    )),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5.0, top: 12.0),
              child: Text(
                '10. Sınıflar',
                style: TextStyle(fontSize: 26),
              ),
            ),
            SizedBox(
              height: 200.0,
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: sinif10.length,
                itemBuilder: (BuildContext context, int index) => Card(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Center(child: Row(
                      children: [
                        Text(sinif10[index] + " Sınıfı", style: TextStyle(fontSize: 23),),
                      ],
                    )),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5.0, top: 12.0),
              child: Text(
                '11. Sınıflar',
                style: TextStyle(fontSize: 26),
              ),
            ),
            SizedBox(
              height: 200.0,
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: sinif11.length,
                itemBuilder: (BuildContext context, int index) => Card(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Center(child: Row(
                      children: [
                        Text(sinif11[index] + " Sınıfı", style: TextStyle(fontSize: 23),),
                      ],
                    )),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5.0, top: 12.0),
              child: Text(
                '12. Sınıflar',
                style: TextStyle(fontSize: 26),
              ),
            ),
            SizedBox(
              height: 200.0,
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: sinif12.length,
                itemBuilder: (BuildContext context, int index) => Card(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Center(child: Row(
                      children: [
                        Text(sinif12[index] + " Sınıfı", style: TextStyle(fontSize: 23),),
                      ],
                    )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
