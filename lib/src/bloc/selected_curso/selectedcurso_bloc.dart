import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../models/curso.dart';

part 'selectedcurso_event.dart';
part 'selectedcurso_state.dart';

class SelectedcursoBloc extends Bloc<SelectedcursoEvent, SelectedcursoState> {
  SelectedcursoBloc() : super(SelectedcursoState(selected: CursoModel())) {
    on<OnSelectCurso>((event, emit) {
      emit(SelectedcursoState(
        selected: event.curso,
        isBuy: event.isBuy,
      ));
    });
  }
}
