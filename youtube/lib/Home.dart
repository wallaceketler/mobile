import 'package:flutter/material.dart';
import '../canvas/biblioteca.dart';
import '../canvas/emAlta.dart';
import '../canvas/inicio.dart';
import '../canvas/inscricao.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    List<Widget> canvas = [
      Inicio(),
      EmAlta(),
      Inscricao(),
      Biblioteca()
    ];

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey, opacity: 1),
        title: Image.asset("images/youtube.png", width: 98, height: 22),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: (){

            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){

            },
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: (){

            },
          )
        ],
      ),
      body: canvas[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        fixedColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            label: "Início",    //Text está depreciado, atenção
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Em alta",    //Text está depreciado, atenção
            icon: Icon(Icons.whatshot),
          ),
          BottomNavigationBarItem(
            label: "Inscrições",    //Text está depreciado, atenção
            icon: Icon(Icons.subscriptions),
          ),
          BottomNavigationBarItem(
            label: "Biblioteca",    //Text está depreciado, atenção
            icon: Icon(Icons.folder),
          ),
        ],
      ),
    );
  }
}
    