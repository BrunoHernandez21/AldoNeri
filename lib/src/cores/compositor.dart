import 'package:aldo_neri/src/bloc/acount/acount_bloc.dart';
import 'package:aldo_neri/src/bloc/inicio/inicio_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/curso/curso_bloc.dart';
import '../helpers/variables_globales.dart';
import '../screens/acount/register_confirm.dart';

class Compositor {
  ///////////////////////////////////////////////
  ///Sistem Controller
  static Future<bool> onInitApp(BuildContext context) async {
    return true;
  }

  static Future<bool> onCloseApp(BuildContext context) async {
    return true;
  }

  static Future<bool> onSuspendApp(BuildContext context) async {
    return true;
  }

  ///////////////////////////////////////////////
  ///Acount Controller
  static Future<bool> onLogin(
      BuildContext context, String email, String password) async {
    final acountB = BlocProvider.of<AcountBloc>(context);
    await acountB.login(email, password, context);
    return true;
  }

  static Future<void> onRegister({
    required BuildContext context,
    required String email,
    required String password,
    required String lastname,
    required String name,
  }) async {
    final acountB = BlocProvider.of<AcountBloc>(context);
    if (await acountB.register(
      email: email,
      password: password,
      context: context,
      lastname: lastname,
      name: name,
    )) Navigator.of(context).pushNamed(RegisterConfirm.routeName);
  }

  static Future<bool> onLogOut(BuildContext context) async {
    final acountB = BlocProvider.of<AcountBloc>(context);
    await acountB.logout();
    return true;
  }

  ///////////////////////////////////////////////
  ///Buy Controller
  static Future<bool> onRenuvaSecion(BuildContext context) async {
    return true;
  }

  static Future<bool> onBuy(BuildContext context) async {
    return true;
  }

  ///////////////////////////////////////////////
  ///Cursos Controller
  ///
  static Future<bool> loadContinuar({
    required BuildContext context,
  }) async {
    final bCurs = BlocProvider.of<CursoBloc>(context);
    bCurs.add(OnLoadContinuar(continuar: Pruebas.cartelera));
    return true;
  }

  static Future<bool> loadDescubrir(
    BuildContext context,
  ) async {
    final bCurs = BlocProvider.of<CursoBloc>(context);
    bCurs.add(OnLoadDescubrir(descubrir: Pruebas.cartelera));
    return true;
  }

  static Future<bool> loadProximamente(
    BuildContext context,
  ) async {
    final bCurs = BlocProvider.of<CursoBloc>(context);
    bCurs.add(OnLoadProximamente(proximamente: Pruebas.cartelera));
    return true;
  }

  static Future<bool> loadcompletado(
    BuildContext context,
  ) async {
    final bCurs = BlocProvider.of<CursoBloc>(context);
    bCurs.add(OnLoadcompletado(completado: Pruebas.cartelera));
    return true;
  }

  ////////
  ///
  static Future<void> loadInicio({
    required BuildContext context,
  }) async {
    final bCurs = BlocProvider.of<InicioBloc>(context);
    bCurs.add(OnLoad(cartelera: Pruebas.cartelera));
  }

  static Future<void> selectCurso({
    required BuildContext context,
  }) async {}
}
