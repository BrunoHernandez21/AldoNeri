part of 'inicio_bloc.dart';

@immutable
abstract class InicioEvent {}

class OnLoad extends InicioEvent {
  final List<CursoModel> cartelera;
  OnLoad({
    required this.cartelera,
  });
}
