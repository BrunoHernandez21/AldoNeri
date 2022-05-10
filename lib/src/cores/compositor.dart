import 'package:aldo_neri/src/bloc/acount/acount_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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

  static void onRegister({
    required BuildContext context,
    required String email,
    required String password,
    required String lastname,
    required String name,
  }) async {
    final acountB = BlocProvider.of<AcountBloc>(context);
    acountB.register(
      email: email,
      password: password,
      context: context,
      lastname: lastname,
      name: name,
    );
  }

  static Future<bool> onLogOut(BuildContext context) async {
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

}
