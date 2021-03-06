import 'package:flutter/material.dart';

import '../../../helpers/variables_globales.dart';

class Recomendado extends StatelessWidget {
  const Recomendado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(children: const [
          _Destacado(),
          _Destacado(),
          _Destacado(),
        ]),
      ),
    );
  }
}

class _Destacado extends StatelessWidget {
  const _Destacado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Medidas.size.width * .47,
      height: Medidas.size.width * .47,
      margin: EdgeInsets.symmetric(
        horizontal: Medidas.size.width * .015,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black,
      ),
    );
  }
}
