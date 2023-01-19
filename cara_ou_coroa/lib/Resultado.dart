import 'package:flutter/material.dart';
import 'Home.dart';

class Resultado extends StatefulWidget {
  //const Resultado({Key? key}) : super(key: key);

  var resultado;

  Resultado({required this.resultado});

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff61bd86),
      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(widget.resultado)
            ],
          ),

          Padding(padding: EdgeInsets.only(top:50)),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: ()=> Navigator.pop(context),
                child: Image.asset('botao_voltar.png'),
              )
              
            ],
          ),

        ],
      ),
    );
  }
}
