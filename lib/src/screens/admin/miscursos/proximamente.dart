import 'package:aldo_neri/src/helpers/new_icons.dart';
import 'package:aldo_neri/src/models/curso.dart';
import 'package:flutter/material.dart';

import '../../../bloc/curso/curso_bloc.dart';
import '../../../cores/compositor.dart';
import '../../../helpers/variables_globales.dart';
import '../../../widgets/text.dart';

class Proximamente extends StatelessWidget {
  final CursoState state;
  const Proximamente({Key? key, required this.state}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        Compositor.loadProximamente(context);
      },
      child: state.proximamente.isEmpty
          ? emptyList()
          : ListView.builder(
              itemCount: state.proximamente.length,
              itemBuilder: (BuildContext context, int i) {
                return _Tarjeta(curso: state.proximamente[i]);
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
  const _Tarjeta({Key? key, required this.curso}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: SizedBox(
                width: double.infinity,
                height: Medidas.size.width * .60,
                child: curso.thumbnail == null
                    ? null
                    : Image.network(curso.thumbnail!, fit: BoxFit.fill),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  width: 60,
                  height: 60,
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
                    size: 45,
                  ),
                ),
                SizedBox(
                    width: Medidas.size.width * .60,
                    child:
                        Textos.parrafoNaranja(texto: 'Encuentro Terapeutico')),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Textos.parrafoGrey(
                  renglones: 6,
                  align: TextAlign.justify,
                  texto: curso.description ?? ""),
            ),
          ],
        ),
      ),
    );
  }
}
