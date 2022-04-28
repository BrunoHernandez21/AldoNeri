import 'package:aldo_neri/src/widgets/botones.dart';
import 'package:flutter/material.dart';

import '../../../helpers/new_icons.dart';
import '../../../widgets/text.dart';

class Continuar extends StatelessWidget {
  final TabController controller;
  const Continuar({required this.controller, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 40),
      child: Column(
        mainAxisSize: MainAxisSize.min,
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
