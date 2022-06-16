import 'package:aldo_neri/src/helpers/new_icons.dart';
import 'package:aldo_neri/src/widgets/botones.dart';
import 'package:aldo_neri/src/widgets/inputs_text.dart';
import 'package:aldo_neri/src/widgets/text.dart';
import 'package:flutter/material.dart';

import '../../../helpers/variables_globales.dart';
import '../../../models/comentario.dart';
import '../../../models/lesson.dart';

class Conversacion extends StatefulWidget {
  final Lesson lesson;
  const Conversacion({Key? key, required this.lesson}) : super(key: key);

  @override
  State<Conversacion> createState() => _ConversacionState();
}

class _ConversacionState extends State<Conversacion> {
  final TextEditingController controller = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _InputConversacion(
            controller: controller,
            onTap: () {
              controller.text;
            },
          ),
          _Convesacion(
              comentarios: widget.lesson.conversacion?.comentarios ?? []),
        ],
      ),
    );
  }
}

class _InputConversacion extends StatelessWidget {
  final TextEditingController controller;
  final void Function() onTap;
  const _InputConversacion({
    Key? key,
    required this.controller,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Textos.parrafo(texto: "Preguntas"),
          ),
          const SizedBox(
            height: 10,
          ),
          InputsText.classic(
            controller: controller,
            hintText: "Comparte tus ideas",
          ),
          Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              width: Medidas.size.width * .3,
              child: Botones.degradedButtonOrange(
                body: Textos.parrafo(texto: "Publicar"),
                height: 30,
                onTap: onTap,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _Convesacion extends StatelessWidget {
  final List<Comentario> comentarios;
  const _Convesacion({
    Key? key,
    required this.comentarios,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: iterador(comentarios),
    );
  }

  List<Widget> iterador(List<Comentario> comentarios) {
    List<Widget> i = [];
    for (Comentario comentario in comentarios) {
      i.add(
        Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Column(
            children: [
              ListTile(
                leading: const SizedBox(),
                title: Textos.parrafo(texto: comentario.nombre ?? "sinNombre"),
              ),
              Textos.parrafo(texto: comentario.contenido ?? "sinNombre"),
            ],
          ),
        ),
      );
    }
    final Comentario comentario = Comentario();
    i.add(
      Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          children: [
            ListTile(
              leading: const SizedBox(),
              title: Textos.parrafo(texto: comentario.nombre ?? "sinNombre"),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Textos.parrafo(
                  texto: comentario.contenido ??
                      "el parrafo aqui presentado es una muestra de contenido para ayduar a la representacion de las formas de la aplicacion, no debe tomarse como la aplicacion final, este texto debe ser retirado y apuntar a los comentarios de apartado de chat correspondiente",
                  align: TextAlign.justify),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: Medidas.size.width * .35,
                  child: Botones.degradedButton(
                    body: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          NewIcons.corazon_borde,
                          color: Colors.grey,
                          size: 15,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Textos.parrafo(texto: "Me gusta"),
                      ],
                    ),
                    colors: [Colors.white, Colors.white],
                    onTap: () {},
                  ),
                ),
                SizedBox(
                  width: Medidas.size.width * .35,
                  child: Botones.degradedButton(
                    body: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          NewIcons.mensaje,
                          color: Colors.grey,
                          size: 15,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Textos.parrafo(texto: "Comentar"),
                      ],
                    ),
                    colors: [Colors.white, Colors.white],
                    onTap: () {},
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
    return i;
  }
}
