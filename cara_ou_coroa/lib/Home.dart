import 'dart:ui';
import 'dart:math';
import 'package:flutter/material.dart';

import 'Resultado.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  void GeraResultado(){
    Random random = new Random();
    var result = random.nextBool();
    var imagePath = '';

    if(result == false){
      imagePath = "moeda_cara.png";
    }
    else{
      imagePath = "moeda_coroa.png";
    }

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context)=> Resultado(resultado: imagePath)
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff61bd86),
      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children:[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("logo.png")
            ],
          ),

          Padding(
            padding: EdgeInsets.only(top:50),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: GeraResultado,
                child: Image.asset("botao_jogar.png"),
              )
            ],
          ),
        ]
      ),
    );
  }
}
