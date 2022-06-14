part of 'selectedcurso_bloc.dart';

@immutable
class SelectedcursoState {
  final CursoModel selected;
  final bool isBuy;
  const SelectedcursoState({
    this.isBuy = false,
    required this.selected,
  });

  SelectedcursoState copyWhit(
          {bool? isBuy,
          List<CursoModel>? completado,
          List<CursoModel>? proximamente,
          List<CursoModel>? descubrir,
          List<CursoModel>? continuar,
          CursoModel? selected}) =>
      SelectedcursoState(
          isBuy: isBuy ?? this.isBuy, selected: selected ?? this.selected);
}
