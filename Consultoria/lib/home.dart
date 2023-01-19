import 'dart:io';

import 'package:consultoria/servicos.dart';
import 'package:flutter/material.dart';

import 'clientes.dart';
import 'contato.dart';
import 'empresa.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ATM Consultoria"),
      ),
      body: Container(
        child: Center(
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Padding( padding: EdgeInsets.only(top: 50)),

                Container(
                  child:
                  Image.asset("logo.png"),
                ),

                Padding(padding: EdgeInsets.only(top: 30)),

                Container(
                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      GestureDetector(
                        onTap: () =>
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context)=> Empresa()
                            )
                          ),
                        child: Image.asset("menu_empresa.png"),
                      ),

                      Padding( padding: EdgeInsets.only(right: 50)),

                      GestureDetector(
                        onTap: () =>
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context)=> Servicos()
                              )
                            ),
                        child: Image.asset("menu_servico.png"),

                      )
                    ],
                  ),
                ),
                
                Padding(padding: EdgeInsets.only(top: 30)),
                
                Container(
                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [

                      GestureDetector(
                        onTap: () =>
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Clientes()
                              )
                            ),
                        child: Image.asset("menu_cliente.png"),
                      ),



                      Padding( padding: EdgeInsets.only(right: 50)),

                      GestureDetector(
                        onTap: () =>
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Contato()
                              )
                            ),
                        child: Image.asset("menu_contato.png"),
                      )


                    ],
                  ),
                ),
              ],
            ),
        )
      ),
    );
  }
}
