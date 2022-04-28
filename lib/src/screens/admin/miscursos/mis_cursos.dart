import 'package:flutter/material.dart';

import '../../../helpers/variables_globales.dart';
import '../../../widgets/bacground.dart';
import 'appbar.dart';
import 'completado.dart';
import 'continuar.dart';
import 'descubrir.dart';
import 'proximamente.dart';

class MisCursos extends StatefulWidget {
  const MisCursos({Key? key}) : super(key: key);

  @override
  State<MisCursos> createState() => _MisCursosState();
}

class _MisCursosState extends State<MisCursos> with TickerProviderStateMixin {
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

    return BackGrounds.burbujas(
      child: SafeArea(
        child: Column(
          children: [
            const AppbarCursos(),
            SizedBox(
              height: 55,
              child: TabBar(
                controller: controller,
                isScrollable: true,
                labelColor: Colors.orange,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.orange,
                tabs: const <Widget>[
                  Tab(
                    text: 'Continuar',
                  ),
                  Tab(
                    text: 'Descubrir',
                  ),
                  Tab(
                    text: 'Proximamente',
                  ),
                  Tab(
                    text: 'Completado',
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: controller,
                physics: const BouncingScrollPhysics(),
                children: <Widget>[
                  Continuar(controller: controller),
                  const Descubrir(),
                  const Proximamente(),
                  const Completado(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
