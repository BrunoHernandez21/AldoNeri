import 'package:aldo_neri/src/helpers/variables_globales.dart';
import 'package:aldo_neri/src/widgets/text.dart';
import 'package:flutter/material.dart';

import '../../../models/lesson.dart';

class VideosC extends StatelessWidget {
  final Lesson lesson;
  const VideosC({Key? key, required this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Textos.tituloNaranja(texto: lesson.title ?? "Sin Titulo"),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            width: Medidas.size.width,
            height: Medidas.size.width * (9 / 16),
            child: Container(
              color: Colors.black,
              child: Image.network(
                "https://mundoodontologo.com/wp-content/uploads/2014/11/cursos.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child:
                Textos.parrafoGrey(texto: lesson.summary ?? "Sin descripción"),
          ),
        ],
      ),
    );
  }
}
