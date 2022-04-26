import 'package:aldo_neri/src/screens/admin/admin.dart';
import 'package:flutter/cupertino.dart';

import '../screens/acount/home.dart';
import '../screens/acount/login.dart';
import '../screens/acount/recovery.dart';
import '../screens/acount/register.dart';
import '../screens/acount/root.dart';

class Ruts {
  static final Map<String, WidgetBuilder> _rutas = {
    Root.routeName: (_) => const Root(),
    Home.routeName: (_) => const Home(),
    Login.routeName: (_) => const Login(),
    Recovery.routeName: (_) => const Recovery(),
    Register.routeName: (_) => const Register(),
    Admin.routeName: (_) => const Admin(),
  };

  static get rutas {
    return _rutas;
  }
}
