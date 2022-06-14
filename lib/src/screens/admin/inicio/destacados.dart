import 'package:flutter/material.dart';

import '../../../bloc/inicio/inicio_bloc.dart';
import '../../../helpers/variables_globales.dart';
import '../../../models/curso.dart';

class Destacados extends StatelessWidget {
  final InicioState estado;
  const Destacados({
    Key? key,
    required this.estado,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Medidas.size.height * .30,
      width: double.infinity,
      child: PageView.builder(
        controller: PageController(viewportFraction: .87),
        physics: const BouncingScrollPhysics(),
        itemCount: estado.cartelera.length,
        itemBuilder: (context, index) {
          return _Destacado(curso: estado.cartelera[index]);
        },
      ),
    );
  }
}

class _Destacado extends StatelessWidget {
  final CursoModel curso;
  const _Destacado({
    Key? key,
    required this.curso,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: size.width * .03,
        bottom: size.width * .06,
        right: size.width * .03,
        top: size.width * .03,
      ),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: curso.thumbnail == null
          ? Container(
              color: Colors.black,
            )
          : Image.network(curso.thumbnail!, fit: BoxFit.fill),
    );
  }
}
