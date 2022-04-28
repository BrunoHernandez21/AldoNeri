import 'package:flutter/material.dart';

import '../../../widgets/text.dart';

class AppbarMiPerfil extends StatelessWidget {
  const AppbarMiPerfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: SizedBox(
        height: 50,
        width: double.infinity,
        child: Stack(
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_back_ios),
                )),
            Center(
              child: Textos.titulo(
                texto: 'Mi Perfil',
              ),
            ),
          ],
        ),
      ),
    );
  }
}