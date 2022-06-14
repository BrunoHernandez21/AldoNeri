import 'package:aldo_neri/src/widgets/text.dart';
import 'package:flutter/material.dart';

import '../../bloc/selected_curso/selectedcurso_bloc.dart';
import '../../models/curso.dart';
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
      child: ListView.builder(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        itemCount: state.selected.sections?.length ?? 0,
        itemBuilder: (context, i) {
          return Iterable(
            seccion: state.selected.sections![i],
          );
        },
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
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      child: Container(
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
                  ? const Icon(Icons.arrow_circle_right_outlined)
                  : const Icon(Icons.arrow_circle_down_outlined),
            ),
            isEx
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        ILeccion(),
                        Divider(),
                        ILeccion(),
                        Divider(),
                        ILeccion(),
                        Divider(),
                        ILeccion(),
                        Divider(),
                      ],
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}

class ILeccion extends StatelessWidget {
  const ILeccion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Textos.parrafo(texto: "leccion"),
            const Icon(Icons.arrow_right)
          ],
        ),
      ),
      onTap: () {
        Navigator.of(context).pushNamed(Leccion.routeName);
      },
    );
  }
}
