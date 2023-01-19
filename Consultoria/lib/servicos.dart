import 'package:flutter/material.dart';
import 'home.dart';

class Servicos extends StatefulWidget {
  const Servicos({Key? key}) : super(key: key);

  @override
  _ServicosState createState() => _ServicosState();
}

class _ServicosState extends State<Servicos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Serviços"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(50),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset("detalhe_servico.png"),
                Text("Nossos Serviços",
                style: TextStyle(color: Colors.green, fontSize: 25)),
              ],
            ),

            Row(children:[Text("Consultoria")]),

            Row(children:[Text("Preços")]),

            Row(children:[Text("Acompanhamento de projetos")]),

          ],
        ),
      ),
    );
  }
}
