import 'package:aldo_neri/src/cores/compositor.dart';
import 'package:aldo_neri/src/helpers/variables_globales.dart';
import 'package:aldo_neri/src/screens/acount/root.dart';
import 'package:aldo_neri/src/screens/admin/inicio/cursos_talleres.dart';
import 'package:aldo_neri/src/screens/admin/inicio/recomendados.dart';
import 'package:aldo_neri/src/widgets/bacground.dart';
import 'package:aldo_neri/src/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/inicio/inicio_bloc.dart';
import 'appbar.dart';
import 'destacados.dart';

class Inicio extends StatefulWidget {
  const Inicio({
    Key? key,
  }) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  bool state = false;

  @override
  Widget build(BuildContext context) {
    return BackGrounds.burbujas(
      child: SafeArea(
        child: Column(
          children: [
            AppbarInicio(
              onChange: () {
                state = !state;
                setState(() {});
              },
            ),
            Flexible(
                child: Stack(
              children: [
                BlocBuilder<InicioBloc, InicioState>(
                  builder: (context, state) {
                    if (state.cartelera.isEmpty) {
                      BlocProvider.of<InicioBloc>(context)
                          .add(OnLoad(cartelera: Pruebas.cartelera));
                    }
                    return BodyInicio(
                      estado: state,
                    );
                  },
                ),
                if (state) const BodyUserNotify(),
              ],
            )),
          ],
        ),
      ),
    );
  }
}

class BodyInicio extends StatelessWidget {
  final InicioState estado;
  const BodyInicio({Key? key, required this.estado}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        await Compositor.loadInicio(context: context);
      },
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Destacados(
              estado: estado,
            ), ///// Destacados
            Padding(
              padding: const EdgeInsets.only(left: 13.0),
              child: Textos.tituloGrey(
                  texto: 'Cursos y Talleres', align: TextAlign.left),
            ),
            const CursosTalleres(), ///// Curso Talleres
            Padding(
              padding: const EdgeInsets.only(left: 13.0),
              child: Textos.tituloGrey(
                  texto: 'Videos Recomendados', align: TextAlign.left),
            ),
            const Recomendado(), ///// Recomendados
          ],
        ),
      ),
    );
  }
}

class BodyUserNotify extends StatelessWidget {
  const BodyUserNotify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15),
      padding: const EdgeInsets.only(left: 3, right: 8),
      width: Medidas.size.width * .4,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          TextButton(
            child: Textos.parrafo(texto: "tema"),
            onPressed: () {},
          ),
          TextButton(
            child: Textos.parrafo(texto: "tema"),
            onPressed: () {},
          ),
          TextButton(
            child: Textos.parrafo(texto: "tema"),
            onPressed: () {},
          ),
          TextButton(
            child: Textos.parrafo(texto: "Exit"),
            onPressed: () {
              Compositor.onLogOut(context);
              Navigator.of(context).pushNamedAndRemoveUntil(
                  RootPage.routeName, (route) => false);
            },
          ),
        ],
      ),
    );
  }
}
