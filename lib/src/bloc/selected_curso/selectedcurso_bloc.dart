import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../models/curso.dart';
import '../../models/lesson.dart';
import '../../models/section.dart';

part 'selectedcurso_event.dart';
part 'selectedcurso_state.dart';

class SelectedcursoBloc extends Bloc<SelectedcursoEvent, SelectedcursoState> {
  SelectedcursoBloc()
      : super(SelectedcursoState(
          curso: CursoModel(),
          lesson: Lesson(),
          section: Section(),
          isBuy: false,
        )) {
    on<OnSelectCurso>((event, emit) {
      emit(SelectedcursoState(
        curso: event.curso,
        isBuy: event.isBuy,
        lesson: Lesson(),
        section: Section(),
      ));
    });
    on<OnSelectLesson>((event, emit) {
      emit(state.copyWhit(lesson: event.lesson));
    });
    on<OnSelectSection>((event, emit) {
      emit(state.copyWhit(section: event.section));
    });
  }
}
