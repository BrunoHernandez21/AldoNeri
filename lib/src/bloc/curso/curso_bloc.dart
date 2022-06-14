import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../models/curso.dart';

part 'curso_event.dart';
part 'curso_state.dart';

class CursoBloc extends Bloc<CursoEvent, CursoState> {
  CursoBloc() : super(const CursoState()) {
    on<OnBuy>((event, emit) {
      emit(state.copyWhit(isBuy: event.isBuy));
    });
    on<OnLoadContinuar>((event, emit) {
      emit(state.copyWhit(continuar: event.continuar));
    });
    on<OnLoadDescubrir>((event, emit) {
      emit(state.copyWhit(descubrir: event.descubrir));
    });
    on<OnLoadProximamente>((event, emit) {
      emit(state.copyWhit(proximamente: event.proximamente));
    });
    on<OnLoadcompletado>((event, emit) {
      emit(state.copyWhit(completado: event.completado));
    });
  }
}
