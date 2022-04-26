import 'package:aldo_neri/src/cores/repository.dart';

import '../models/acount.dart';

class AcountLocalSave {
  /////////////////user/////////////////////////////////////////////////

  static Future<void> saveAcount({
    required UsuarioPrivate acount,
  }) async {
    Repository.saveString("Usuario", acount.usuario.toJson());
    Repository.saveString("token", acount.token);
    Repository.saveBool("ok", acount.ok);
  }

  static Future<UsuarioPrivate> get acount async {
    UsuarioPrivate temp = UsuarioPrivate(
      ok: await Repository.loadBool("ok") ?? false,
      token: await Repository.loadString("token") ?? "",
      usuario: Usuario.fromJson(await Repository.loadString("Usuario") ?? "{}"),
    );

    return temp;
  }

  /////////////////LOGIN/////////////////////////////////////////////////

  static Future<void> saveisLogin(bool isLogin) async {
    Repository.saveBool('isLogin', isLogin);
  }

  static Future<bool> get isLogin async {
    final bool isLogin = await Repository.loadBool('isLogin') ?? false;

    return isLogin;
  }
}
