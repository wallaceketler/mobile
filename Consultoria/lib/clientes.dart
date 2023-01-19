import 'package:flutter/material.dart';
import 'home.dart';

class Clientes extends StatefulWidget {
  const Clientes({Key? key}) : super(key: key);

  @override
  _ClientesState createState() => _ClientesState();
}

class _ClientesState extends State<Clientes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clientes"),
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(
        padding: EdgeInsets.all(50),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset("detalhe_cliente.png"),
                Text("Clientes", style: TextStyle(fontSize: 25))
              ],
            ),
            Row(
              children: [
                Image.asset("cliente1.png")
              ],
            ),
            Row(
              children: [
                Text("Empresa de software")
              ],
            ),
            Row(
              children: [
                Image.asset("cliente2.png")
              ],
            ),
            Row(
              children: [
                Text("Empresa de auditoria")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
