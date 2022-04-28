import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../helpers/new_icons.dart';
import '../../../helpers/variables_globales.dart';
import '../../../widgets/text.dart';

class Completado extends StatelessWidget {
  const Completado({Key? key}) : super(key: key);

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
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Icon(Icons.check_circle, color: Color(0xFFFA7F46)),
                ),
              ],
            )),
      ),
    );
  }
}
