import 'package:aldo_neri/src/cores/compositor.dart';
import 'package:aldo_neri/src/widgets/text.dart';
import 'package:flutter/material.dart';

import '../../bloc/selected_curso/selectedcurso_bloc.dart';
import '../../helpers/new_icons.dart';
import '../../models/lesson.dart';
import '../../models/section.dart';
import 'leccion/leccion.dart';

class Lecciones extends StatelessWidget {
  final SelectedcursoState state;
  const Lecciones({
    Key? key,
    required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {},
      child: state.curso.sections == null
          ? emptyList()
          : ListView.builder(
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              itemCount: state.curso.sections?.length ?? 0,
              itemBuilder: (context, i) {
                return Iterable(
                  seccion: state.curso.sections![i],
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
                    'En este momento parece que hay conexcion a internet\nDesliza para actualizar'),
          ),
        ],
      ),
    );
  }
}

class Iterable extends StatefulWidget {
  final Section seccion;
  const Iterable({Key? key, required this.seccion}) : super(key: key);

  @override
  State<Iterable> createState() => _IterableState();
}

class _IterableState extends State<Iterable> {
  bool isEx = false;
  @override
  Widget build(BuildContext context) {
    final List<Widget> lista = generador(seccion: widget.seccion);

    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        children: [
          ListTile(
            title: Textos.titulo(texto: widget.seccion.title ?? "No title"),
            onTap: () {
              isEx = !isEx;
              setState(() {});
            },
            trailing: isEx
                ? const Icon(Icons.arrow_circle_down_outlined)
                : const Icon(Icons.arrow_circle_right_outlined),
          ),
          isEx
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: lista,
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }

  List<Widget> generador({required Section seccion}) {
    List<Widget> i = [];
    seccion.lessons?.forEach((n) {
      i.add(ILeccion(lesson: n));
      i.add(Divider(
        endIndent: 10,
        indent: 10,
        height: 20,
        thickness: 2,
        color: Colors.grey.shade200,
      ));
    });
    return i;
  }
}

class ILeccion extends StatelessWidget {
  final Lesson lesson;
  const ILeccion({
    Key? key,
    required this.lesson,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Textos.parrafo(texto: lesson.title ?? "No title"),
            lesson.isCompleted == 1
                ? const Icon(
                    NewIcons.geometria_a,
                    color: Colors.orange,
                  )
                : const Icon(
                    NewIcons.geometria_a,
                    color: Colors.grey,
                  ),
          ],
        ),
      ),
      onTap: () {
        Compositor.selectLesson(context: context, lesson: lesson);
        Navigator.of(context).pushNamed(Leccion.routeName);
      },
    );
  }
}
