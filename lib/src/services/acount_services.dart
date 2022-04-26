// ignore: unused_import
import 'package:http/http.dart' as http;

import '../models/acount.dart';

class AcountServices {
  static Future<UsuarioPrivate?> login({
    required String email,
    required String password,
  }) async {
    /*
    try {
      final urI = Uri.parse(_baseUrl + 'login');
      final resp = await http.post(
        urI,
        headers: {
          "Content-Type": "application/x-www-form-urlencoded",
        },
        body: {
          'email': email,
          'password': password,
        },
      );

      final tempResp = json.decode(resp.body);
      if (tempResp["ok"] == true) {
        return UsuarioPrivate.fromMap(tempResp);
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }*/
    return UsuarioPrivate(usuario: Usuario());
  }

  static Future<bool> register({
    required String email,
    required String password,
    required String name,
    required String lastname,
  }) async {
    return true;
  }

  static void save(Usuario user, String token) async {}

  static Future recovery({required String email}) async {
    return;
  }
}
