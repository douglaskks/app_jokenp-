import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  const Jogo({super.key});

  @override
  State<Jogo> createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Joken Po",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(top: 32, bottom: 16),
              child: Text(
                "Escolha do APP",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )),
          GestureDetector(
            onTap: () {
              print("clicado!");
            },
            child: Image.asset("images/padrao.png"),
          ),
          Padding(
              padding: EdgeInsets.only(top: 32, bottom: 16),
              child: Text(
                "Escolha a sua opção:",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset(
                'images/pedra.png',
                height: 95,
              ),
              Image.asset(
                'images/papel.png',
                height: 95,
              ),
              Image.asset(
                'images/tesoura.png',
                height: 95,
              ),
            ],
          )
        ],
      ),
    );
  }
}
