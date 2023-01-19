import 'dart:math';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _fraseAtual = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.green.shade700,
      ),
      body: Container(
        padding: EdgeInsets.all(50),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/logo.png"),

              Text(
                "Clique abaixo para gerar uma frase",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),
              ),


              TextButton(
                onPressed: () {
                  changeSentence();
                },
                child: Text(
                  "Nova Frase",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green.shade700),
                ),
              ),

              Text(_fraseAtual),

            ],
          ),
        )
      ),
    );
  }

  void changeSentence() {

    var frases = [
      "A vingança nunca é plena, mata a alma e a envenena",
      "Não impora quantas vezes você bate e sim quantas vezes aguenta apanhar e seguir em pé",
      "A dor é temporária"
    ];
    int random = Random().nextInt(frases.length);
    print(random);

    if(frases[random] == _fraseAtual){
      while(frases[random] == _fraseAtual){
        random = Random().nextInt(frases.length);
      }
    }

    setState(() {
      _fraseAtual = frases[random];
    });
  }
}
