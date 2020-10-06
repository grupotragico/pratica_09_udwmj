import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int numDeVezes = 0;

  void cliqueBotao() {
    numDeVezes = numDeVezes + 1;
    msg = 'Número de vezes em que o botão foi pressionado: $numDeVezes. \nEsse número é ${numDeVezes  % 2 == 0 ? "par" : "ímpar"}';
  }

  String msg =
      "Número de vezes em que o botão foi pressionado: 0.\nEsse número é par";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Inicial'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(msg)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            cliqueBotao();
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
