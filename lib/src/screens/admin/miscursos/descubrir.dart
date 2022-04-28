import 'package:aldo_neri/src/helpers/variables_globales.dart';
import 'package:aldo_neri/src/widgets/botones.dart';
import 'package:aldo_neri/src/widgets/text.dart';
import 'package:flutter/material.dart';

import '../../../helpers/new_icons.dart';
import '../../curso/curso.dart';

class Descubrir extends StatelessWidget {
  const Descubrir({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _Tarjeta(),
          _Tarjeta(),
        ],
      ),
    );
  }
}

class _Tarjeta extends StatelessWidget {
  const _Tarjeta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
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
                            child: Textos.tituloNaranja(
                                texto: 'Encuentro Terapeutico'),
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
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Textos.parrafoGrey(
                    renglones: 6,
                    align: TextAlign.justify,
                    texto:
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
              ),
              Botones.degradedTextButtonOrange(
                  text: 'Saber Más',
                  onTap: () {
                    Navigator.pushNamed(context, Curso.routeName);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
