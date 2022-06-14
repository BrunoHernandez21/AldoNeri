import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../models/curso.dart';

part 'inicio_event.dart';
part 'inicio_state.dart';

class InicioBloc extends Bloc<InicioEvent, InicioState> {
  InicioBloc() : super(const InicioState(cartelera: [])) {
    on<OnLoad>((event, emit) {
      emit(state.copyWhit(
        cartelera: event.cartelera,
      ));
    });
  }
}
