import 'package:aldo_neri/src/screens/acount/login.dart';
import 'package:aldo_neri/src/screens/acount/register.dart';
import 'package:aldo_neri/src/widgets/bacground.dart';
import 'package:aldo_neri/src/widgets/botones.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../../helpers/variables_globales.dart';

class RootPage extends StatelessWidget {
  static const routeName = '/';
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Medidas.size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(),
      body: BackGrounds.login(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
              padding: EdgeInsets.only(bottom: Medidas.size.height * .05),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 30,
                    ),
                    child: Botones.solidTextButtonWhite(
                      fontColor: Colors.white,
                      text: AppLocalisations.of(context).soyNuevo,
                      onTap: () {
                        Navigator.of(context).pushNamed(Register.routeName);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 30,
                    ),
                    child: Botones.solidTextButtonWhite(
                      fontColor: Colors.white,
                      text: AppLocalisations.of(context).iniciarSesion,
                      onTap: () {
                        Navigator.of(context).pushNamed(Login.routeName);
                      },
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
