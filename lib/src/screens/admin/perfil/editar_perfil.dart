import 'package:aldo_neri/src/widgets/bacground.dart';
import 'package:aldo_neri/src/widgets/botones.dart';
import 'package:aldo_neri/src/widgets/inputs_text.dart';
import 'package:aldo_neri/src/widgets/text.dart';
import 'package:flutter/material.dart';

import '../../../helpers/variables_globales.dart';

class EditarPerfil extends StatelessWidget {
  static const String routeName = 'editarPerfil';
  const EditarPerfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        foregroundColor: Colors.black,
        centerTitle: true,
        title: Textos.parrafo(texto: 'Editar Perfil'),
      ),
      body: BackGrounds.burbujas(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    width: Medidas.size.width * .38,
                    padding: const EdgeInsets.symmetric(vertical: 40),
                    child: Stack(
                      children: [
                        CircleAvatar(
                          child: const Text('BZ'),
                          radius: Medidas.size.width * .18,
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: const LinearGradient(
                                colors: [
                                  Color(0xFFF3B640),
                                  Color(0xFFF98245),
                                ],
                                begin: FractionalOffset.topCenter,
                                end: FractionalOffset.bottomCenter,
                              ),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.edit,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: InputsText.classic(
                      hintText: 'Nombre y Apellido',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: InputsText.classic(
                      hintText: 'Fecha de Nacimiento',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: InputsText.classic(
                      hintText: 'Correo Electronico',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: InputsText.classic(
                      hintText: 'Tel??fono',
                    ),
                  ),
                  Botones.degradedTextButtonOrange(
                      text: 'Guardar Cambios', onTap: () {}),
                  const SizedBox(
                    height: 60,
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
