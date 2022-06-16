import 'package:flutter/material.dart';

import '../../../bloc/curso/curso_bloc.dart';
import '../../../cores/compositor.dart';
import '../../../helpers/new_icons.dart';
import '../../../helpers/variables_globales.dart';
import '../../../models/curso.dart';
import '../../../widgets/text.dart';

class Completado extends StatelessWidget {
  final CursoState state;
  const Completado({Key? key, required this.state}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        Compositor.loadcompletado(context);
      },
      child: state.completado.isEmpty
          ? emptyList()
          : ListView.builder(
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              itemCount: state.completado.length,
              itemBuilder: (BuildContext context, int i) {
                return GestureDetector(
                  child: _Tarjeta(curso: state.completado[i]),
                  onTap: () {
                    Compositor.selectCurso(
                      context: context,
                      curso: state.completado[i],
                    );
                  },
                );
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
                  'En este momento parece que hay conexcion a internet\nDesliza para actualizar',
            ),
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
      padding: const EdgeInsets.all(10.0),
      child: Card(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  height: 50,
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
                    size: 40,
                  ),
                ),
                SizedBox(
                  width: Medidas.size.width * .6,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Textos.parrafo(
                          texto: 'Encuentro Terapeutico Febrero 2022'),
                      Textos.parrafoGrey(
                          texto: 'inicia de nuevo el 01 de Marzo 2022'),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Icon(Icons.check_circle, color: Color(0xFFFA7F46)),
                ),
              ],
            )),
      ),
    );
  }
}
