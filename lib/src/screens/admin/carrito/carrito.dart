import 'package:aldo_neri/src/screens/admin/carrito/appbar.dart';
import 'package:flutter/material.dart';

import 'checkout/checkout.dart';
import 'detalles/detalles.dart';

class Carrito extends StatelessWidget {
  final TabController controller;
  const Carrito({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Column(
          children: [
            AppbarCarrito(controller: controller),
            const SizedBox(
              height: 55,
              child: TabBar(
                labelColor: Colors.orange,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.orange,
                tabs: <Widget>[
                  Tab(
                    text: 'Detalles',
                  ),
                  Tab(
                    text: 'Check out',
                  ),
                ],
              ),
            ),
            const Expanded(
              child: TabBarView(
                physics: BouncingScrollPhysics(),
                children: <Widget>[
                  Detalles(),
                  CheckOut(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
