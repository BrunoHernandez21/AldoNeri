part of 'curso_bloc.dart';

@immutable
abstract class CursoEvent {}

class OnBuy extends CursoEvent {
  final bool isBuy;
  OnBuy({
    required this.isBuy,
  });
}

class OnLoadcompletado extends CursoEvent {
  final List<CursoModel>? completado;
  OnLoadcompletado({
    required this.completado,
  });
}

class OnLoadProximamente extends CursoEvent {
  final List<CursoModel>? proximamente;
  OnLoadProximamente({
    required this.proximamente,
  });
}

class OnLoadDescubrir extends CursoEvent {
  final List<CursoModel>? descubrir;
  OnLoadDescubrir({
    required this.descubrir,
  });
}

class OnLoadContinuar extends CursoEvent {
  final List<CursoModel>? continuar;
  OnLoadContinuar({
    required this.continuar,
  });
}
