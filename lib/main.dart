import 'package:aldo_neri/src/bloc/acount/acount_bloc.dart';
import 'package:aldo_neri/src/bloc/shaderPreferences/shaderpreferences_bloc.dart';
import 'package:aldo_neri/src/cores/acount.dart';
import 'package:aldo_neri/src/cores/preferences_app.dart';
import 'package:aldo_neri/src/helpers/ruts_screens.dart';
import 'package:aldo_neri/src/models/acount.dart';
import 'package:aldo_neri/src/screens/acount/home.dart';
import 'package:aldo_neri/src/screens/admin/admin.dart';
import 'package:flutter/services.dart';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //PushNotification.initializeApp();
  //CheckPermissos.checkAll();

  final theme = await PreferencesApp.theme;
  final locale = await PreferencesApp.locale;
  final acount = await AcountLocalSave.acount;
  final isLogin = await AcountLocalSave.isLogin;

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(Appstate(
      acount: acount,
      locale: locale,
      theme: theme,
      isLogin: isLogin,
    ));
  });
}

class Appstate extends StatelessWidget {
  final Locale locale;
  final ThemeData theme;
  final UsuarioPrivate acount;
  final bool isLogin;

  const Appstate(
      {Key? key,
      required this.locale,
      required this.theme,
      required this.acount,
      required this.isLogin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => AcountBloc(acount: acount, isLogin: isLogin)),
        BlocProvider(
            create: (_) => ShaderpreferencesBloc(locale: locale, theme: theme)),
      ],
      child: BlocBuilder<ShaderpreferencesBloc, ShaderpreferencesState>(
        builder: (context, state) {
          return MyApp(
            locale: state.idioma,
            theme: state.themeData,
            isLogin: BlocProvider.of<AcountBloc>(context).state.isLogin,
          );
        },
      ),
    );
  }
}

// asdas
class MyApp extends StatelessWidget {
  final ThemeData theme;
  final Locale locale;
  final bool isLogin;

  const MyApp(
      {Key? key,
      required this.theme,
      required this.locale,
      required this.isLogin})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Neri',
      debugShowCheckedModeBanner: false,
      theme: theme,
      locale: locale,
      routes: Ruts.rutas,
      initialRoute: isLogin ? Admin.routeName : Home.routeName,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        AppLocalisations.delegate
      ],
      supportedLocales: AppLocalisations.delegate.supportedLocales,
    );
  }
}