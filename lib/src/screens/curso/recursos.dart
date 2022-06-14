import 'package:flutter/material.dart';

import '../../bloc/selected_curso/selectedcurso_bloc.dart';

class Recursos extends StatelessWidget {
  final SelectedcursoState state;
  const Recursos({Key? key, required this.state}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Recursos'),
    );
  }
}
