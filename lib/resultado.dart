import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {

  String valor;

  Resultado(this.valor);

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {



    var caminhoImagem;
    if( widget.valor == "d1"){
      caminhoImagem  = "img/d1.png";
    }else if(widget.valor == "d2"){
    caminhoImagem = "img/d2.png";
    }else if(widget.valor == "d3"){
      caminhoImagem = "img/d3.png";
    }else if(widget.valor == "d4"){
      caminhoImagem = "img/d4.png";
    }else if(widget.valor == "d5"){
      caminhoImagem = "img/d5.png";
    }else if(widget.valor == "d6"){
      caminhoImagem = "img/d6.png";
    }

    return Scaffold(
      backgroundColor: Color(0xff8395a7), //modo de uso da cor hexadecimal
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(caminhoImagem),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Image.asset("img/voltar.png"),
            )
          ],
        ),
      ),
    );
  }
}
