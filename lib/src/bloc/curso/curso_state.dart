part of 'curso_bloc.dart';

@immutable
class CursoState {
  final List<CursoModel> completado;
  final List<CursoModel> proximamente;
  final List<CursoModel> descubrir;
  final List<CursoModel> continuar;

  const CursoState({
    this.completado = const [],
    this.continuar = const [],
    this.descubrir = const [],
    this.proximamente = const [],
  });

  CursoState copyWhit({
    bool? isBuy,
    List<CursoModel>? completado,
    List<CursoModel>? proximamente,
    List<CursoModel>? descubrir,
    List<CursoModel>? continuar,
  }) =>
      CursoState(
        completado: completado ?? this.completado,
        proximamente: proximamente ?? this.proximamente,
        descubrir: descubrir ?? this.descubrir,
        continuar: continuar ?? this.continuar,
      );
}
