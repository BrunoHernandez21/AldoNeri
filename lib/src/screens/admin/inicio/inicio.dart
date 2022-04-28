import 'package:aldo_neri/src/screens/admin/inicio/cursos_talleres.dart';
import 'package:aldo_neri/src/screens/admin/inicio/recomendados.dart';
import 'package:aldo_neri/src/widgets/bacground.dart';
import 'package:aldo_neri/src/widgets/text.dart';
import 'package:flutter/material.dart';

import 'appbar.dart';
import 'destacados.dart';

class Inicio extends StatelessWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackGrounds.burbujas(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppbarInicio(),
              const Destacados(),
              Padding(
                padding: const EdgeInsets.only(left: 13.0),
                child: Textos.tituloGrey(
                    texto: 'Cursos y Talleres', align: TextAlign.left),
              ),
              const CursosTalleres(),
              Padding(
                padding: const EdgeInsets.only(left: 13.0),
                child: Textos.tituloGrey(
                    texto: 'Videos Recomendados', align: TextAlign.left),
              ),
              const Recomendado(),
            ],
          ),
        ),
      ),
    );
  }
}
