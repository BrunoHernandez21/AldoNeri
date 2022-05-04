import 'package:aldo_neri/src/helpers/variables_globales.dart';
import 'package:aldo_neri/src/widgets/botones.dart';
import 'package:aldo_neri/src/widgets/text.dart';
import 'package:flutter/material.dart';

import '../../helpers/new_icons.dart';

class Descripcion extends StatelessWidget {
  const Descripcion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          Container(
            color: Colors.black,
            width: double.infinity,
            height: Medidas.size.height * .34,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Textos.parrafoNaranja(texto: 'Circulo de Sanacion'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Card(
              child: Column(
                children: [
                  _infoComrpa(),
                  _Iterable(
                    titulo: 'Sobre el curso',
                    parrafo:
                        'Exercitation aute aute ad dolore fugiat magna ea amet reprehenderit id cupidatat.Nostrud ipsum cillum excepteur incididunt veniam.',
                  ),
                  _Iterable(
                    titulo: 'Acerca de Aldo Nri',
                    subtitulo: 'Terapeuta Holistico de Aum Konrai',
                    foto: SizedBox(),
                    parrafo:
                        'Exercitation aute aute ad dolore fugiat magna ea amet reprehenderit id cupidatat.Nostrud ipsum cillum excepteur incididunt veniam.',
                  ),
                  _Iterable(
                    titulo: 'Que incluye este curso',
                    parrafo:
                        'Exercitation aute aute ad dolore fugiat magna ea amet reprehenderit id cupidatat.Nostrud ipsum cillum excepteur incididunt veniam.',
                  ),
                  _Iterable(
                    titulo: 'Cuanto dura el curso',
                    parrafo:
                        'Exercitation aute aute ad dolore fugiat magna ea amet reprehenderit id cupidatat.Nostrud ipsum cillum excepteur incididunt veniam.',
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 60.0),
                    child: _Valoracion(),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _Iterable extends StatelessWidget {
  final String titulo;
  final String? subtitulo;
  final String parrafo;
  final Widget? foto;
  const _Iterable(
      {required this.titulo,
      required this.parrafo,
      this.foto,
      this.subtitulo,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5.0, top: 15),
          child: Textos.parrafoNaranja(texto: titulo),
        ),
        if (subtitulo != null) Textos.tituloGrey(texto: subtitulo!),
        SizedBox(
          height: 20,
        ),
        if (foto != null)
          Container(
            margin: EdgeInsets.only(bottom: 20),
            width: double.infinity,
            height: Medidas.size.height * .25,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(10)),
            child: foto,
          ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Textos.parrafoGrey(texto: parrafo, align: TextAlign.justify),
        ),
      ],
    );
  }
}

class _Valoracion extends StatelessWidget {
  const _Valoracion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            gradient: const LinearGradient(
              colors: [Color(0xFFFA8046), Color(0xFFF7A742)],
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
            ),
          ),
          child: const Icon(
            NewIcons.geometria_a,
            color: Colors.white,
            size: 50,
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: Medidas.size.width * .55,
                  child: Textos.parrafoNaranja(texto: 'Encuentro Terapeutico'),
                ),
                SizedBox(
                  width: Medidas.size.width * .55,
                  child: Textos.parrafoGrey(texto: '4.5 Media Total'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.star, color: Colors.orange),
                    Icon(Icons.star, color: Colors.orange),
                    Icon(Icons.star, color: Colors.orange),
                    Icon(Icons.star, color: Colors.orange),
                    Icon(Icons.star, color: Colors.orange),
                  ],
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}

class _infoComrpa extends StatelessWidget {
  const _infoComrpa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, bottom: 4.0, top: 30),
          child: Row(
            children: [
              Textos.parrafoGrey(texto: '100% valoracion positiva'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, bottom: 4.0),
          child: Row(
            children: [
              Textos.parrafoGrey(texto: '350 alumnos'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, bottom: 4.0),
          child: Row(
            children: [
              Textos.parrafoGrey(texto: '12 lecciones'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, bottom: 4.0),
          child: Row(
            children: [
              Textos.parrafoGrey(texto: 'Documentacion extra'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, bottom: 4.0),
          child: Row(
            children: [
              Textos.parrafoGrey(texto: 'Disponible en la app'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Textos.parrafoNaranja(texto: 'MX 3000\$'),
              SizedBox(
                width: 120,
                child: Botones.degradedTextButtonOrange(
                  text: "Comprar",
                  onTap: () {},
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
