import 'package:aldo_neri/src/widgets/bacground.dart';
import 'package:aldo_neri/src/widgets/text.dart';
import 'package:flutter/material.dart';

import 'lisita.dart';
import 'descripcion.dart';
import 'recursos.dart';

class Curso extends StatelessWidget {
  static const routeName = 'cursosL';
  Curso({Key? key}) : super(key: key);
  bool isBuy = false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: isBuy ? 3 : 2,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          foregroundColor: Colors.grey,
          centerTitle: true,
          title: Textos.tituloGrey(texto: 'Encuentro Terapeutico'),
          actions: [
            SizedBox(
              height: 34,
              width: 34,
              child: GestureDetector(
                child: Stack(
                  children: [
                    const Icon(Icons.notifications, size: 34),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        alignment: Alignment.center,
                        height: 16,
                        width: 16,
                        decoration: BoxDecoration(
                          color: const Color(0xffF2BC3F),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          '3',
                          style: TextStyle(
                            color: Color(0xffFCF2D8),
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  //TODO
                },
              ),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.menu))
          ],
        ),
        body: BackGrounds.burbujas(
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 55,
                  width: double.infinity,
                  child: TabBar(
                    labelColor: Colors.orange,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.orange,
                    tabs: <Widget>[
                      const Tab(
                        text: 'Descripcion',
                      ),
                      const Tab(
                        height: 55,
                        text: 'Lecciones',
                      ),
                      if (isBuy)
                        const Tab(
                          text: 'Recursos',
                        ),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    physics: BouncingScrollPhysics(),
                    children: <Widget>[
                      const Descripcion(),
                      const Lecciones(),
                      if (isBuy) const Recursos(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
