// ignore: unused_import
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import '../helpers/variables_globales.dart';
import '../models/acount.dart';

class AcountServices {
  static const String _register = URL.base + 'signup';
  static const String _login = URL.base + "login";
  static const String _userdata = URL.base + "userdata";
  static const String _uploadUserImage = URL.base + "upload_user_image";
  static const String _updateUserdata = URL.base + "update_userdata";
  static const String _updatePassword = URL.base + "update_password";
  static const String _forgotPassword = URL.base + "forgot_password";

  static Future<UsuarioPrivate?> login({
    required String email,
    required String password,
  }) async {
    try {
      final urI = Uri.parse(_login);
      final resp = await http.get(
        urI,
        headers: {
          "Content-Type": "application/x-www-form-urlencoded",
          "email": email,
          "password": password,
        },
      );
      print(resp.body);
      return UsuarioPrivate(usuario: Usuario());
      final tempResp = json.decode(resp.body);
      if (tempResp["ok"] == true) {
        return UsuarioPrivate.fromMap(tempResp);
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }

  static Future<bool> register({
    required String email,
    required String password,
    required String name,
    required String lastname,
  }) async {
    try {
      final urI = Uri.parse(_register);
      final resp = await http.post(
        urI,
        headers: {
          "Content-Type": "application/x-www-form-urlencoded",
        },
        body: {
          "email": email,
          "password": password,
          "first_name": name,
          "last_name": lastname,
        },
      );
      print(resp.body);
      return false;
      final tempResp = json.decode(resp.body);
      if (tempResp["ok"] == true) {
        return false;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }

  static Future recovery({required String email}) async {
    final resp = await http.post(
      Uri.parse(_forgotPassword),
      body: {
        'email': email,
      },
    );
    print(resp.body);
    return;
  }

  static void save(Usuario user, String token) async {}

  Future<void> getUserInfo(String token) async {
    try {
      final response = await http.get(Uri.parse(_userdata), headers: {
        "Content-Type": "application/x-www-form-urlencoded",
        "auth_token": token,
      });
      final responseData = json.decode(response.body);
      print(responseData);
    } catch (error) {
      rethrow;
    }
  }

  Future<void> userImageUpload(File image, String token) async {
    var url = _uploadUserImage;
    var uri = Uri.parse(url);
    var request = http.MultipartRequest('POST', uri);
    request.fields['auth_token'] = token;
    request.files.add(
      http.MultipartFile(
          'file', image.readAsBytes().asStream(), image.lengthSync(),
          filename: 'UserPhoto'),
    );

    try {
      var response = await request.send();
      if (response.statusCode == 200) {
        response.stream.transform(utf8.decoder).listen((value) {
          final responseData = json.decode(value);
          if (responseData['status'] != 'success') {
            throw const HttpException('Upload Failed');
          }
          // print(value);
        });
      }

      // final responseData = json.decode(response.body);
    } catch (error) {
      rethrow;
    }
  }

  Future<void> logout() async {}

  Future<void> updateUserData(Usuario user, String token) async {
    const url = _updateUserdata;

    try {
      final response = await http.post(
        Uri.parse(url),
        body: {
          'auth_token': token,
          'first_name': '',
          'last_name': '',
          'email': user.email,
          'biography': '',
          'twitter_link': '',
          'facebook_link': '',
          'linkedin_link': '',
        },
      );

      final responseData = json.decode(response.body);
      if (responseData['status'] == 'failed') {
        throw const HttpException('Update Failed');
      }
    } catch (error) {
      rethrow;
    }
  }

  Future<void> updateUserPassword(
    String currentPassword,
    String newPassword,
    String token,
  ) async {
    const url = _updatePassword;
    try {
      final response = await http.post(
        Uri.parse(url),
        body: {
          'auth_token': token,
          'current_password': currentPassword,
          'new_password': newPassword,
          'confirm_password': newPassword,
        },
      );

      final responseData = json.decode(response.body);
      if (responseData['status'] == 'failed') {
        throw const HttpException('Password update Failed');
      }
    } catch (error) {
      rethrow;
    }
  }
}
