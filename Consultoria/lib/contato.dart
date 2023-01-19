import 'package:flutter/material.dart';
import 'home.dart';

class Contato extends StatefulWidget {
  const Contato({Key? key}) : super(key: key);

  @override
  _ContatoState createState() => _ContatoState();
}

class _ContatoState extends State<Contato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contato"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(50),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset("detalhe_contato.png"),
                Text("Contato", style: TextStyle(color: Colors.green, fontSize: 25))
              ],
            ),
            Row(
              children: [
                Text("Email: consultoria@atm.com.br")
              ],
            ),
            Row(
              children: [
                Text("Telefone: (11)3333-2222")
              ],
            ),
            Row(
              children: [
                Text("Celular: (11)9999-8888")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
