part of 'selectedcurso_bloc.dart';

@immutable
abstract class SelectedcursoEvent {}

class OnSelectCurso extends SelectedcursoEvent {
  final bool isBuy;
  final CursoModel curso;
  OnSelectCurso({
    required this.curso,
    required this.isBuy,
  });
}

class OnSelectLesson extends SelectedcursoEvent {
  final Lesson lesson;
  OnSelectLesson({
    required this.lesson,
  });
}

class OnSelectSection extends SelectedcursoEvent {
  final Section section;
  OnSelectSection({
    required this.section,
  });
}
