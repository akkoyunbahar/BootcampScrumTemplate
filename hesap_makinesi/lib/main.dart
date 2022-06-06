import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: "Hesap Makinesi",
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hesap Makinesi"),),
    body: AnaEkran(),
    );

  }
}
 class AnaEkran extends StatefulWidget {

 
   @override
   _AnaEkranState createState() => _AnaEkranState();
 }
 
 class _AnaEkranState extends State<AnaEkran> {
  num sayi1= 0,sayi2 = 0,sonuc = 0;

  TextEditingController k1 = TextEditingController();
  TextEditingController k2 = TextEditingController();
  sayiToplama(){
    setState(() {
     sayi1 = num.parse(k1.text);
     sayi2 = num.parse(k2.text);
      sonuc = sayi1 + sayi2;
    });
  }
  sayiCikarma(){
    setState(() {
      sayi1 = num.parse(k1.text);
      sayi2 = num.parse(k2.text);
      sonuc = sayi1 - sayi2;
    });
  }
  sayiCarpma(){
    setState(() {
      sayi1 = num.parse(k1.text);
      sayi2 = num.parse(k2.text);
      sonuc = sayi1 * sayi2;
    });
  }

  sayiBolme(){
    setState(() {
      sayi1 = num.parse(k1.text);
      sayi2 = num.parse(k2.text);
      sonuc = sayi1/sayi2;
    });
  }

  sayiKare(){
    setState(() {
      sayi1 = num.parse(k1.text);
      sonuc = sayi1 * sayi1;
    });
  }



  @override
   Widget build(BuildContext context) {
     return Container(
       margin: EdgeInsets.all(30) ,
        child: Center(
          child: SingleChildScrollView(
          child: Column(
            children: [
             Text("$sonuc"),
              TextField(
                controller: k1,
              ),
              TextField(
                controller: k2,
              ),
               RaisedButton(onPressed: sayiToplama, child: Text("Toplama"),),
              RaisedButton(onPressed: sayiCikarma, child: Text("Çıkarma"),),
              RaisedButton(onPressed: sayiCarpma, child: Text("Çarpma"),),
              RaisedButton(onPressed: sayiBolme, child: Text("Bölme"),),
              RaisedButton(onPressed: sayiKare, child: Text("Karesini alma"),),

            ],
          ),
          ),
        ),

     );
   }
 }
 
