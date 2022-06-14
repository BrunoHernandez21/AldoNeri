import 'package:aldo_neri/src/screens/admin/inicio/inicio.dart';
import 'package:flutter/material.dart';

import '../../helpers/new_icons.dart';
import '../../helpers/variables_globales.dart';
import 'carrito/carrito.dart';
import 'miscursos/mis_cursos.dart';
import 'perfil/perfil.dart';

class Admin extends StatefulWidget {
  static const routeName = 'Admin';

  const Admin({Key? key}) : super(key: key);

  @override
  State<Admin> createState() => _AdminState();
}

class _AdminState extends State<Admin> with TickerProviderStateMixin {
  late final TabController controller;

  @override
  void initState() {
    super.initState();

    controller = TabController(length: 4, initialIndex: 0, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Medidas.size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: TabBarView(
              controller: controller,
              physics: const BouncingScrollPhysics(),
              children: <Widget>[
                const Inicio(),
                MisCursos(controller: controller),
                Perfil(controller: controller),
                Carrito(controller: controller),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.white,
            height: 55,
            width: double.infinity,
            child: TabBar(
              isScrollable: true,
              controller: controller,
              labelColor: Colors.orange,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.orange,
              tabs: const <Widget>[
                Tab(
                  icon: Icon(NewIcons.home2),
                  text: 'Inicio',
                ),
                Tab(
                  height: 55,
                  icon: Icon(
                    NewIcons.geometria_a,
                  ),
                  text: 'Mis Cursos',
                ),
                Tab(
                  icon: Icon(Icons.person_outline),
                  text: 'Mi perfil',
                ),
                Tab(
                  icon: Icon(Icons.shopping_cart),
                  text: 'Carrito',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
