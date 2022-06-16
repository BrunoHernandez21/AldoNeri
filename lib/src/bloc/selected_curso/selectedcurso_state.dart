part of 'selectedcurso_bloc.dart';

@immutable
class SelectedcursoState {
  final CursoModel curso;
  final Section section;
  final Lesson lesson;
  final bool isBuy;
  const SelectedcursoState({
    this.isBuy = false,
    required this.curso,
    required this.section,
    required this.lesson,
  });

  SelectedcursoState copyWhit({
    bool? isBuy,
    CursoModel? curso,
    Section? section,
    Lesson? lesson,
  }) =>
      SelectedcursoState(
        isBuy: isBuy ?? this.isBuy,
        curso: curso ?? this.curso,
        section: section ?? this.section,
        lesson: lesson ?? this.lesson,
      );
}
