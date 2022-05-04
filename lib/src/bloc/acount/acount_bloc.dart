import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../../cores/acount.dart';
import '../../models/acount.dart';
import '../../services/acount_services.dart';
import '../../widgets/dialogs_alert.dart';

part 'acount_event.dart';
part 'acount_state.dart';

class AcountBloc extends Bloc<AcountEvent, AcountState> {
  AcountBloc({required UsuarioPrivate acount, required bool isLogin})
      : super(AcountState(
          acount: acount,
          isLogin: isLogin,
        )) {
    on<OnLogin>((event, emit) =>
        emit(AcountState(acount: event.acount, isLogin: true)));
    on<OnLogout>((event, emit) =>
        emit(AcountState(acount: event.acount, isLogin: false)));
    on<OnUpdateAcount>(
        (event, emit) => emit(state.copyWith(acount: state.acount)));
  }

  ////////////////////////////////////////////////////logearse
  Future<UsuarioPrivate?> login(
      String email, String password, BuildContext context) async {
    showDialog(
      context: context,
      builder: (context) => DialogAlert.loading(context),
      barrierDismissible: false,
    );
    final acount = await AcountServices.login(
      email: email.trim(),
      password: password.trim(),
    );
    Navigator.of(context).pop();
    if (acount != null) {
      add(OnLogin(acount: acount, isLogin: true));
      AcountLocalSave.saveisLogin(true);
      AcountLocalSave.saveAcount(acount: acount);
    }
    return acount;
  }

  //////////////////////////////////////////////////Cerrar secion
  Future<UsuarioPrivate> logout() async {
    add(OnLogout());
    AcountLocalSave.saveisLogin(false);
    AcountLocalSave.saveAcount(acount: UsuarioPrivate(usuario: Usuario()));
    return UsuarioPrivate(usuario: Usuario());
  }

  Future<bool> register({
    required String email,
    required String password,
    required String name,
    required String lastname,
    required BuildContext context,
  }) async {
    showDialog(
      context: context,
      builder: (context) => DialogAlert.loading(context),
      barrierDismissible: false,
    );
    final resp = await AcountServices.register(
      email: email.trim(),
      password: password.trim(),
      name: name.trim(),
      lastname: lastname.trim(),
    );
    Navigator.of(context).pop();
    return resp;
  }

  Future<bool> recovery({
    required String email,
    required BuildContext context,
  }) async {
    showDialog(
      context: context,
      builder: (context) => DialogAlert.loading(context),
      barrierDismissible: false,
    );
    Navigator.of(context).pop();
    return true;
  }

  Future update(Usuario usuario) async {
    AcountServices.save(usuario, state.acount.token);
  }
}
