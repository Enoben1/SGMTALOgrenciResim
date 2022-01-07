import 'package:flutter/material.dart';
import 'package:ogrenciresim/ogrenciler.dart';

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

  String secililiste = "";

  List<String> bosliste = [];
  List<String> sinif12B = ["9", "16", "17", "18", "22", "26", "33", "34", "36", "37", "42", "44", "48", "49", "50", "56", "68", "69", "150", "170", "203", "251", "260", "269", "272", "274", "382", "388", "427", "428", "464"];
  List<String> sinif12C = ["6", "13", "19", "24", "27", "30", "35", "39", "43", "45", "53", "54", "55", "64", "70", "71", "96", "122", "128", "144", "147", "199", "213", "253", "256", "266", "267", "271", "275", "310"];
  List<String> sinif12D = ["277", "278", "279", "280", "281", "282", "283", "289", "290", "292", "300", "301", "302", "303", "304", "305", "306", "366", "405", "414", "415", "418", "426", "457", "460", "545"];
  List<String> sinif12Disim = ["Alper Alp", "Furkan Erbilgin", "Ahmet Tuna", "Era Yücel", "Yunus Erkan", "Alptekin Eğe", "Berat Toprak", "Enes Doğru", "Kerem Sarı", "İbrahim Özkaracan", "Erdal Enes Kara", "Selim Yıldırım", "Ali Berk Fidan", "Önder Erşahin", "Arif Aktaş", "Batuhan Yıldız", "Ufuk Abdurrahman Atıcı", "Sude Şevval Konukçu", "Görkem Buzdere", "Göksel Bekdemir", "Halil İbrahim Yıldız", "Batıkan Pınar", "Engin Taha Sümer", "Emircan Şahin", "Murat Bayrak", "İmran Yıldırım"];


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
                        GestureDetector(onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ogrenciler2(
                                    index==3?sinif12D:index==2?sinif12C:index==1?sinif12B:bosliste,
                                    index==3?sinif12Disim:bosliste
                              ),
                            ),
                          );
                        } ,child: Text(sinif12[index] + " Sınıfı", style: TextStyle(fontSize: 23),)),
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
