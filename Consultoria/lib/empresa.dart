import 'package:flutter/material.dart';
import 'home.dart';

class Empresa extends StatefulWidget {
  const Empresa({Key? key}) : super(key: key);

  @override
  _EmpresaState createState() => _EmpresaState();
}

class _EmpresaState extends State<Empresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Empresa"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        padding: EdgeInsets.all(50),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                    Image.asset("detalhe_empresa.png"),
                  Text(
                      "Sobre a empresa",
                      style: TextStyle(color: Colors.orange, fontSize: 25),
                  ),
                ],
              ),
            Text(
                "Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum "
                "Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem ImpsumLorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum "
                "Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem ImpsumLorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum "
                "Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem ImpsumLorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum "
                "Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem ImpsumLorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum "
                "Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem ImpsumLorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum "
                "Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem ImpsumLorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum "
                "Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem ImpsumLorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum "
                "Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem ImpsumLorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum "
                "Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem ImpsumLorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum "
                "Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem ImpsumLorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum "
                "Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem ImpsumLorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum "
                "Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem ImpsumLorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum "
                "Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum Lorem Impsum",
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
