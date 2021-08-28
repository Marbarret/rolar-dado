import 'package:flutter/material.dart';
import 'package:rolar_dado/resultado.dart';
import 'dart:math';

class Jogar extends StatefulWidget {
  @override
  _JogarState createState() => _JogarState();
}

class _JogarState extends State<Jogar> {

  void _resultado(){



    var itens = ["d1", "d2", "d3", "d4", "d5", "d6"];
    var numero = Random().nextInt(itens.length);
    var resultado = itens [numero];



    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => Resultado(resultado)
      ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8395a7), //modo de uso da cor hexadecimal
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset("img/logo-dados.png"),
            GestureDetector(
              onTap: _resultado,
              child: Image.asset("img/botao.png"),
            )
          ],
        ),
      ),
    );
  }
}
