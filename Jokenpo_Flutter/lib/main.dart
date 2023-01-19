import 'dart:ui';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
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

  String MachineImage = "padrao.png";
  String Winner = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Jokenpo Game"),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 200),
        child: Center(
          child: Column(
            children: [
              const Text("Escolha da máquina: ", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              )),
              Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              Image.asset(MachineImage),
              Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              Text(Winner),
              Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              Text("Escolha sua jogada: ", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              )),
              Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton.icon(onPressed: clickRock, icon: Image.asset("pedra.png"), label: Text("")),
                  TextButton.icon(onPressed: clickScissor, icon: Image.asset("tesoura.png"), label: Text("")),
                  TextButton.icon(onPressed: clickPaper, icon: Image.asset("papel.png"), label: Text("")),
                ],
              ),
            ]
          ),
        ),
      ),
    );
  }

  void machinePlays(){
    //define jogada da máquina
    int machinePlay = Random().nextInt(3);
    if(machinePlay == 0){
      setState(() {
        MachineImage = "pedra.png";
      });
    }
    else if(machinePlay == 1){
      setState(() {
        MachineImage = "papel.png";
      });
    }
    else{
      setState(() {
        MachineImage = "tesoura.png";
      });
    }
  }

  void verifyWinner(String playerChoice){
    if(playerChoice == "rock" && MachineImage == "papel.png"){
      setState(() {
        Winner = "Máquina venceu!";
      });
    }
    else if(playerChoice == "rock" && MachineImage == "tesoura.png"){
      setState(() {
        Winner = "Você venceu!";
      });
    }
    else if(playerChoice == "rock" && MachineImage == "pedra.png"){
      setState(() {
        Winner = "Empate!";
      });
    }
    else if(playerChoice == "paper" && MachineImage == "papel.png"){
      setState(() {
        Winner = "Empate!";
      });
    }
    else if(playerChoice == "paper" && MachineImage == "pedra.png"){
      setState(() {
        Winner = "Você venceu!";
      });
    }
    else if(playerChoice == "paper" && MachineImage == "tesoura.png"){
      setState(() {
        Winner = "Máquina venceu!";
      });
    }
    else if(playerChoice == "scissor" && MachineImage == "papel.png"){
      setState(() {
        Winner = "Você venceu!";
      });
    }
    else if(playerChoice == "scissor" && MachineImage == "pedra.png"){
      setState(() {
        Winner = "Máquina venceu!";
      });
    }
    else{
      setState(() {
        Winner = "Empate!";
      });
    }
  }

  void clickRock(){
    machinePlays();
    verifyWinner("rock");
  }

  void clickScissor(){
    machinePlays();
    verifyWinner("scissor");

  }

  void clickPaper(){
    machinePlays();
    verifyWinner("paper");
  }
}

