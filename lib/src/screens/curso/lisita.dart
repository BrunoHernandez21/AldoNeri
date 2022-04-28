import 'package:aldo_neri/src/screens/curso/subleccion/leccion.dart';
import 'package:aldo_neri/src/widgets/botones.dart';
import 'package:flutter/material.dart';

class Lecciones extends StatelessWidget {
  const Lecciones({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 100,
        height: 100,
        child: Botones.degradedTextButtonOrange(
          text: 'lista',
          onTap: () {
            Navigator.of(context).pushNamed(SubLecciones.routeName);
          },
        ),
      ),
    );
  }
}
