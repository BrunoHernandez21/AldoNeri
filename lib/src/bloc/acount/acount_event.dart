part of 'acount_bloc.dart';

@immutable
abstract class AcountEvent {}

class OnLogin extends AcountEvent {
  final UsuarioPrivate acount;
  final bool isLogin;
  OnLogin({required this.acount, this.isLogin = true});
}

class OnLogout extends AcountEvent {
  final UsuarioPrivate acount = UsuarioPrivate(usuario: Usuario());
  final bool isLogin = false;
}

class OnEditalbe extends AcountEvent {
  OnEditalbe({required this.editable});
  final bool editable;
}

class OnUpdateAcount extends AcountEvent {
  OnUpdateAcount({required this.acount});
  final UsuarioPrivate acount;
}
