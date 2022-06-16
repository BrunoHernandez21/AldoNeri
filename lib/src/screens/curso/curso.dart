import 'package:aldo_neri/src/widgets/bacground.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/selected_curso/selectedcurso_bloc.dart';
import 'appbar.dart';
import 'lecciones.dart';
import 'descripcion.dart';
import 'recursos.dart';

class Curso extends StatelessWidget {
  static const routeName = 'cursosL';
  const Curso({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectedcursoBloc, SelectedcursoState>(
      builder: (context, state) {
        return Scaffold(
          body: DefaultTabController(
            initialIndex: state.isBuy ? 1 : 0,
            length: state.isBuy ? 3 : 2,
            child: BackGrounds.burbujas(
              child: BodyCursos(state: state),
            ),
          ),
        );
      },
    );
  }
}

class BodyCursos extends StatelessWidget {
  final SelectedcursoState state;
  const BodyCursos({
    Key? key,
    required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const AppbarCursos(),
          SizedBox(
            width: double.infinity,
            child: TabBar(
              labelColor: Colors.orange,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.orange,
              tabs: <Widget>[
                const Tab(
                  text: 'Descripcion',
                ),
                const Tab(
                  height: 55,
                  text: 'Lecciones',
                ),
                if (state.isBuy)
                  const Tab(
                    text: 'Recursos',
                  ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              physics: const BouncingScrollPhysics(),
              children: <Widget>[
                Descripcion(state: state),
                Lecciones(state: state),
                if (state.isBuy) Recursos(state: state),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
