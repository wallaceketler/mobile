import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController _textoAlcool = TextEditingController();
  TextEditingController _textoGasolina = TextEditingController();
  var melhorAbastecimento = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text("Álcool ou Gasolina?"),
      ) ,
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [

                Image.asset("logo.png"),

                Padding(
                  padding: EdgeInsets.only(top: 40),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 40),
                ),

                TextField(
                  decoration: InputDecoration(
                      labelText: "Digite o valor do álcool"
                  ),
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                      fontSize: 25
                  ),
                  onSubmitted: (String e){},
                  controller: _textoAlcool,
                ),

                Padding(
                  padding: EdgeInsets.only(top: 40),
                ),

                TextField(
                  decoration: InputDecoration(
                      labelText: "Digite o valor da gasolina"
                  ),
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                      fontSize: 25
                  ),
                  onSubmitted: (String e){},
                  controller: _textoGasolina,
                ),

                Padding(
                  padding: EdgeInsets.only(top: 40),
                ),

                TextButton(
                  onPressed: calcula,
                  child: Text(
                    "Calcular!",
                    style:
                    TextStyle(
                        color: Colors.white,
                        fontSize: 25
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue.shade900),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40),
                ),

                Text(melhorAbastecimento, style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),textAlign: TextAlign.center,),
              ],
            ),
          ),
        ),
      ),
    );
  }


  void calcula(){
    print(_textoGasolina.text);
    print(_textoAlcool.text);

    var valorGasolina = double.tryParse(_textoGasolina.text);
    var valorAlcool = double.tryParse(_textoAlcool.text);

    if(valorGasolina == null || valorAlcool == null || valorAlcool <= 0 || valorGasolina <= 0){
      setState(() {
        melhorAbastecimento = "Valor inválido, digite os preços maiores que zero com ponto e não com vírgula";
      });
    }
    else if((valorAlcool/valorGasolina) >= 0.7 ) {
      setState(() {
        melhorAbastecimento = "Melhor abastecer com gasolina";
      });
    }
    else{
      setState(() {
        melhorAbastecimento = "Melhor abastecer com álcool";
      });
    }

  }
}
