import 'package:aldo_neri/src/bloc/acount/acount_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Compositor {
  static Future<void> onInitApp(BuildContext context) async {}

  static Future<void> onCloseApp(BuildContext context) async {}

  static Future<void> onSuspendApp(BuildContext context) async {}

  static Future<void> onRenuvaSecion(BuildContext context) async {}

  static Future<void> onBuy(BuildContext context) async {}

  static Future<void> onLogin(
      BuildContext context, String email, String password) async {
    final acountB = BlocProvider.of<AcountBloc>(context);
    await acountB.login(email, password, context);
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

  static void onLogOut(BuildContext context) async {}
}
