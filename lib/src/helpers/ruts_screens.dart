import 'package:aldo_neri/src/screens/acount/recovery_verificacion.dart';
import 'package:aldo_neri/src/screens/admin/admin.dart';
import 'package:aldo_neri/src/screens/admin/perfil/ajustes/new_password.dart';
import 'package:aldo_neri/src/screens/admin/perfil/ayuda.dart';
import 'package:aldo_neri/src/screens/admin/perfil/editar_perfil.dart';
import 'package:aldo_neri/src/screens/admin/perfil/informacionlegal.dart';
import 'package:flutter/cupertino.dart';

import '../screens/acount/login.dart';
import '../screens/admin/perfil/acerdade.dart';
import '../screens/admin/perfil/ajustes/ajustes.dart';
import '../screens/admin/perfil/ajustes/password_confirm.dart';
import '../screens/acount/recovery.dart';
import '../screens/acount/register.dart';
import '../screens/acount/register_confirm.dart';
import '../screens/acount/root.dart';
import '../screens/curso/curso.dart';
import '../screens/curso/subleccion/leccion.dart';

class Ruts {
  static final Map<String, WidgetBuilder> _rutas = {
    RootPage.routeName: (_) => const RootPage(),
    Login.routeName: (_) => const Login(),
    Recovery.routeName: (_) => const Recovery(),
    RecoveryVerificacion.routeName: (_) => const RecoveryVerificacion(),
    Register.routeName: (_) => const Register(),
    Admin.routeName: (_) => const Admin(),
    NewPassword.routeName: (_) => const NewPassword(),
    RegisterConfirm.routeName: (_) => const RegisterConfirm(),
    PasswordConfirm.routeName: (_) => const PasswordConfirm(),
    AcercaDe.routeName: (_) => const AcercaDe(),
    Ajustes.routeName: (_) => const Ajustes(),
    EditarPerfil.routeName: (_) => const EditarPerfil(),
    Ayuda.routeName: (_) => const Ayuda(),
    InformacionLegal.routeName: (_) => const InformacionLegal(),
    Curso.routeName: (_) => const Curso(),
    SubLecciones.routeName: (_) => const SubLecciones(),
  };

  static get rutas {
    return _rutas;
  }
}
