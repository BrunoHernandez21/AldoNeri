import 'package:aldo_neri/src/screens/acount/recovery_verificacion.dart';
import 'package:aldo_neri/src/screens/admin/admin.dart';
import 'package:aldo_neri/src/screens/admin/perfil/ajustes/billetera.dart';
import 'package:aldo_neri/src/screens/admin/perfil/ajustes/direccion.dart';
import 'package:aldo_neri/src/screens/admin/perfil/ajustes/new_password.dart';
import 'package:aldo_neri/src/screens/admin/perfil/ayuda.dart';
import 'package:aldo_neri/src/screens/admin/perfil/editar_perfil.dart';
import 'package:aldo_neri/src/screens/admin/perfil/informacionlegal.dart';
import 'package:aldo_neri/src/screens/curso/leccion/leccion.dart';
import 'package:flutter/cupertino.dart';

import '../screens/acount/login.dart';
import '../screens/admin/notify.dart';
import '../screens/admin/perfil/acerdade.dart';
import '../screens/admin/perfil/ajustes/ajustes.dart';
import '../screens/admin/perfil/ajustes/password_confirm.dart';
import '../screens/acount/recovery.dart';
import '../screens/acount/register.dart';
import '../screens/acount/register_confirm.dart';
import '../screens/acount/root.dart';
import '../screens/curso/curso.dart';

class Ruts {
  static final Map<String, WidgetBuilder> _rutas = {
    RootPage.routeName: (_) => const RootPage(),
    Login.routeName: (_) => Login(),
    Recovery.routeName: (_) => const Recovery(),
    RecoveryVerificacion.routeName: (_) => const RecoveryVerificacion(),
    Register.routeName: (_) => Register(),
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
    Leccion.routeName: (_) => const Leccion(),
    Direccion.routeName: (_) => const Direccion(),
    Billetera.routeName: (_) => const Billetera(),
    Notify.routeName: (_) => const Notify(),
  };

  static get rutas {
    return _rutas;
  }
}
