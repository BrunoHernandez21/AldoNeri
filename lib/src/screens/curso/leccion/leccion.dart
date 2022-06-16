import 'package:aldo_neri/src/bloc/selected_curso/selectedcurso_bloc.dart';
import 'package:aldo_neri/src/widgets/bacground.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../widgets/text.dart';
import 'conversacion.dart';
import 'video.dart';

class Leccion extends StatelessWidget {
  static const routeName = 'subLecciones';
  const Leccion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          foregroundColor: Colors.grey,
          centerTitle: true,
          title: Textos.parrafo(texto: 'Encuentro Terapeutico'),
        ),
        body: BlocBuilder<SelectedcursoBloc, SelectedcursoState>(
          builder: (context, state) {
            return _bodyleccion(state: state);
          },
        ),
      ),
    );
  }

  Widget _bodyleccion({required SelectedcursoState state}) {
    return BackGrounds.burbujas(
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
              width: double.infinity,
              child: TabBar(
                labelColor: Colors.orange,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.orange,
                tabs: <Widget>[
                  Tab(
                    text: 'Leccion',
                  ),
                  Tab(
                    height: 55,
                    text: 'Conversaciones',
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics(),
                ),
                children: <Widget>[
                  VideosC(lesson: state.lesson),
                  Conversacion(lesson: state.lesson),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
