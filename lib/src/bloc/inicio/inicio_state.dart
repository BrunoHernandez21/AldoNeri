part of 'inicio_bloc.dart';

@immutable
class InicioState {
  final List<CursoModel> cartelera;

  const InicioState({required this.cartelera});

  InicioState copyWhit({
    List<CursoModel>? cartelera,
  }) =>
      InicioState(
        cartelera: cartelera ?? this.cartelera,
      );
}
