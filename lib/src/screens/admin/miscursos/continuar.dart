import 'package:aldo_neri/src/cores/compositor.dart';
import 'package:aldo_neri/src/widgets/botones.dart';
import 'package:flutter/material.dart';

import '../../../bloc/curso/curso_bloc.dart';
import '../../../helpers/new_icons.dart';
import '../../../helpers/variables_globales.dart';
import '../../../models/curso.dart';
import '../../../widgets/text.dart';
import '../../curso/curso.dart';

class Continuar extends StatelessWidget {
  final TabController controller;
  final CursoState state;
  const Continuar({
    required this.controller,
    required this.state,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        Compositor.loadContinuar(context: context);
      },
      child: state.continuar.isEmpty
          ? emptyList()
          : ListView.builder(
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              itemCount: state.continuar.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 5),
                    child: _Tarjeta(
                      title: state.continuar[index],
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, Curso.routeName);
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
                    'No tienes ningun curso activo en este momento, Echa un vistaso a los increíbles curosos que puedes tomar'),
          ),
          Botones.degradedTextButtonOrange(
              text: " Descubre los cursos",
              onTap: () {
                controller.animateTo(1);
              }),
        ],
      ),
    );
  }
}

class _Tarjeta extends StatelessWidget {
  final CursoModel title;
  const _Tarjeta({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
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
            SizedBox(
              width: Medidas.size.width * .55,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Textos.parrafo(texto: title.title ?? ""),
                  const SizedBox(height: 2),
                  Textos.parrafoGrey(texto: "Videos No Determinable"),
                  const SizedBox(height: 2),
                  const LinearProgressIndicator(
                    minHeight: 2,
                    value: .7,
                    valueColor:
                        AlwaysStoppedAnimation<Color>(Colors.deepOrange),
                  ),
                  const SizedBox(height: 2),
                  Textos.parrafoGrey(texto: "Porcentaje No Determinable"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
