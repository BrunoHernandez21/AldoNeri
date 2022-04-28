import 'package:aldo_neri/src/screens/admin/carrito/appbar.dart';
import 'package:flutter/material.dart';

import 'checkout/checkout.dart';
import 'detalles/detalles.dart';

class Carrito extends StatelessWidget {
  const Carrito({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Column(
          children: const [
            AppbarCarrito(),
            SizedBox(
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
            Expanded(
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
