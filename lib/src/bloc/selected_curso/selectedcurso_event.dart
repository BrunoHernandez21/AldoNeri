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
