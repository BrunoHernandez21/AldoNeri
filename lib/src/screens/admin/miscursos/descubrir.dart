import 'package:aldo_neri/src/cores/compositor.dart';
import 'package:aldo_neri/src/helpers/variables_globales.dart';
import 'package:aldo_neri/src/widgets/botones.dart';
import 'package:aldo_neri/src/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../bloc/curso/curso_bloc.dart';
import '../../../helpers/new_icons.dart';
import '../../../models/curso.dart';
import '../../curso/curso.dart';

class Descubrir extends StatelessWidget {
  final CursoState state;
  const Descubrir({Key? key, required this.state}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        Compositor.loadDescubrir(context);
      },
      child: state.descubrir.isEmpty
          ? emptyList()
          : ListView.builder(
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              itemCount: state.descubrir.length,
              itemBuilder: (BuildContext context, int i) {
                return _Tarjeta(curso: state.descubrir[i]);
              },
            ),
    );
  }

  Widget emptyList() {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 40, bottom: 0),
      child: ListView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        children: [
          const Icon(
            NewIcons.geometria_a,
            color: Colors.grey,
            size: 100,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
            child: Textos.parrafoGrey(
                align: TextAlign.center,
                texto:
                    'En este momento parece que hay conexcion a internet\nDesliza para actualizar'),
          ),
        ],
      ),
    );
  }
}

class _Tarjeta extends StatelessWidget {
  final CursoModel curso;
  const _Tarjeta({
    Key? key,
    required this.curso,
  }) : super(key: key);

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
                    margin: const EdgeInsets.symmetric(horizontal: 10),
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
                            child:
                                Textos.parrafoNaranja(texto: curso.title ?? ""),
                          ),
                          RatingBar.builder(
                            initialRating: 2.2,
                            minRating: 0,
                            itemSize: 15,
                            maxRating: 5,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            //itemPadding: EdgeInsets.only(right: 1.0),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {},
                            ignoreGestures: true,
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
                    texto: curso.description ?? ""),
              ),
              Botones.degradedTextButtonOrange(
                  text: 'Saber Más',
                  onTap: () {
                    //TODO: implementar selectedCurso
                    Navigator.pushNamed(context, Curso.routeName);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
