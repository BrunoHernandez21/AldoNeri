import 'package:aldo_neri/src/helpers/new_icons.dart';
import 'package:flutter/material.dart';

import '../../../helpers/variables_globales.dart';
import '../../../widgets/text.dart';

class Proximamente extends StatefulWidget {
  const Proximamente({Key? key}) : super(key: key);

  @override
  State<Proximamente> createState() => _ProximamenteState();
}

class _ProximamenteState extends State<Proximamente> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
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
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Container(
                color: Colors.black,
                width: double.infinity,
                height: Medidas.size.width * .60,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
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
                        Textos.tituloNaranja(texto: 'Encuentro Terapeutico')),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Textos.parrafoGrey(
                  renglones: 6,
                  align: TextAlign.justify,
                  texto:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
            ),
          ],
        ),
      ),
    );
  }
}
