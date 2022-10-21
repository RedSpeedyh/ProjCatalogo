// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class AnimesCatalogo extends StatelessWidget {
  //Atributos da classe
  final String nomeanime;
  final String datalancamento;
  final String foto;
  //Construtor da classe
  const AnimesCatalogo(this.nomeanime, this.datalancamento, this.foto, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.fromLTRB(5, 10, 15, 20),
      //Espaçamento
      width: MediaQuery.of(context).size.width,
      height: 350,

      decoration: BoxDecoration(
        color: Colors.black38,
        border: Border.all(
          width: 5,
          color: Colors.black38,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Text(
            datalancamento,
            style: TextStyle(
              color: Colors.green.shade900,
              fontSize: 26,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
          Text(nomeanime),
          //FOTO DO VEÍCULO
          Expanded(child: Image.asset('lib/imagens/$foto')),
        ],
      ),
    );
  }
}
