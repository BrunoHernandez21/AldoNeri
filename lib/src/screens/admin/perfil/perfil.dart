import 'package:aldo_neri/src/helpers/new_icons.dart';
import 'package:aldo_neri/src/helpers/variables_globales.dart';
import 'package:aldo_neri/src/screens/admin/perfil/acerdade.dart';
import 'package:aldo_neri/src/screens/admin/perfil/ayuda.dart';
import 'package:aldo_neri/src/screens/admin/perfil/editar_perfil.dart';
import 'package:aldo_neri/src/screens/admin/perfil/informacionlegal.dart';
import 'package:flutter/material.dart';

import '../../../widgets/bacground.dart';
import '../../../widgets/text.dart';
import 'ajustes/ajustes.dart';
import 'appbar.dart';

class Perfil extends StatelessWidget {
  const Perfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackGrounds.burbujas(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const AppbarMiPerfil(),
              Container(
                width: Medidas.size.width * .4,
                padding: const EdgeInsets.only(bottom: 20),
                child: CircleAvatar(
                  child: Text('BZ'),
                  radius: Medidas.size.width * .15,
                ),
              ),
              Textos.titulo(texto: 'Nombre y Apellido'),
              Textos.parrafoGrey(texto: 'usuario@gmail.com'),
              const SizedBox(
                height: 30,
              ),
              ListTile(
                title: Textos.tituloGrey(texto: 'Editar Perfil'),
                leading: const Icon(Icons.person_rounded),
                trailing: const Icon(
                  Icons.arrow_forward_ios_sharp,
                  size: 17,
                ),
                onTap: () {
                  Navigator.pushNamed(context, EditarPerfil.routeName);
                },
              ),
              ListTile(
                title: Textos.tituloGrey(texto: 'Ajustes'),
                leading: const Icon(Icons.settings),
                trailing: const Icon(
                  Icons.arrow_forward_ios_sharp,
                  size: 17,
                ),
                onTap: () {
                  Navigator.pushNamed(context, Ajustes.routeName);
                },
              ),
              ListTile(
                title: Textos.tituloGrey(texto: 'Ayuda y Soporte'),
                leading: const Icon(NewIcons.info),
                trailing: const Icon(
                  Icons.arrow_forward_ios_sharp,
                  size: 17,
                ),
                onTap: () {
                  Navigator.pushNamed(context, Ayuda.routeName);
                },
              ),
              ListTile(
                title: Textos.tituloGrey(texto: 'Acerca de la app'),
                leading: const Icon(NewIcons.geometria_a),
                trailing: const Icon(
                  Icons.arrow_forward_ios_sharp,
                  size: 17,
                ),
                onTap: () {
                  Navigator.pushNamed(context, AcercaDe.routeName);
                },
              ),
              ListTile(
                title: Textos.tituloGrey(texto: 'Informacion Legal'),
                leading: const Icon(NewIcons.escudo),
                trailing: const Icon(
                  Icons.arrow_forward_ios_sharp,
                  size: 17,
                ),
                onTap: () {
                  Navigator.pushNamed(context, InformacionLegal.routeName);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
