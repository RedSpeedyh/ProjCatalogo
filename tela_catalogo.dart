// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'animes_catalogo.dart';

class TelaCatalogo extends StatelessWidget {
  const TelaCatalogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //BARRA DE TÍTULO
      appBar: AppBar(
        title: Text('AnimeList'),
        centerTitle: true,
        backgroundColor: Colors.green.shade900,
      ),
      //CORPO DA TELA
      body: SingleChildScrollView(
          child: Column(
        children: [
          AnimesCatalogo('Death Note', '2006', 'death_note.jpg'),
          AnimesCatalogo('Dragon Ball Z', '1989', 'dragon_ball_z.jpg'),
          AnimesCatalogo('FullMetal Alchemist Brotherhood', '2009',
              'fullmetal_alchemist_brotherhood.jpg'),
          AnimesCatalogo('Hunter X Hunter', '2011', 'hunter_x_hunter.jpg'),
          AnimesCatalogo(
              'Kaguya-Sama:Love Is War', '2019', 'kaguya_sama_love_is_war.jpg'),
          AnimesCatalogo('Konosuba', '2016', 'konosuba.jpg'),
          AnimesCatalogo('My Hero Academia', '2016', 'my_hero_academia.jpg'),
          AnimesCatalogo('One Piece', '1999', 'one_piece.jpg'),
          AnimesCatalogo('Re:Zero', '2016', 're_zero.jpg'),
          AnimesCatalogo('Spy X Family', '2022', 'spy_x_family.jpg'),
        ],
      )),
    );
  }
}
