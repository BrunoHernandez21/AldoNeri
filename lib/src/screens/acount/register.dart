import 'package:aldo_neri/src/screens/acount/register_confirm.dart';
import 'package:aldo_neri/src/widgets/botones.dart';
import 'package:aldo_neri/src/widgets/inputs_text.dart';
import 'package:flutter/material.dart';

import '../../helpers/variables_globales.dart';
import '../../widgets/text.dart';

class Register extends StatelessWidget {
  static const routeName = '/register';

  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Medidas.size = MediaQuery.of(context).size;
    return Container(
      color: Colores.background,
      child: SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            foregroundColor: Colors.black,
          ),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30.0,
              ),
              child: Column(
                children: [
                  Image.asset(
                    Assets.logo2,
                    height: Medidas.size.height * .2,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Textos.tituloNaranja(
                      texto: "Registro",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 20),
                    child: Textos.tituloGrey(
                      texto: "Crea tu cuenta de Aldo Neri",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: InputsText.classic(
                        hintText: "Nombre y Apellido",
                        textType: TextInputType.name),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: InputsText.classic(
                        hintText: "Fecha de Nacimiento",
                        textType: TextInputType.datetime),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: InputsText.box(
                        hintText: 'Correo Eléctronico',
                        textType: TextInputType.emailAddress,
                        icon: const Icon(Icons.mail_outline)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: InputsText.box(
                        hintText: 'Telefono',
                        textType: TextInputType.phone,
                        icon: const Icon(Icons.phone_outlined)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Textos.parrafoHiper(
                      texto: 'Al suscribirse usted aceota nuestros ',
                      hipertext:
                          'terminos y condiciones y politica de privacidad',
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  Botones.degradedTextButtonOrange(
                    text: 'Registrate',
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(RegisterConfirm.routeName);
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        const Expanded(
                          child: Divider(
                            color: Colors.grey,
                            height: 20,
                            indent: 10,
                            endIndent: 10,
                          ),
                        ),
                        Textos.parrafoGrey(texto: 'O Continúa con'),
                        const Expanded(
                          child: Divider(
                            color: Colors.grey,
                            height: 20,
                            indent: 10,
                            endIndent: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Botones.solidnWhitSvg(
                            titulo: 'Google',
                            svgAsset: Assets.svgGoogle,
                            onTap: () {
                              Navigator.of(context).pop();
                            }),
                        Botones.solidnWhitSvg(
                            titulo: 'Facebook',
                            svgAsset: Assets.svgFacebook,
                            onTap: () {
                              Navigator.of(context).pop();
                            }),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
