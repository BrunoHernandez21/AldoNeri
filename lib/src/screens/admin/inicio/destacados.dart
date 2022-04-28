import 'package:flutter/material.dart';

import '../../../helpers/variables_globales.dart';

class Destacados extends StatelessWidget {
  const Destacados({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Medidas.size.height * .30,
      width: double.infinity,
      child: PageView.builder(
        controller: PageController(viewportFraction: .87),
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const _Destacado();
        },
      ),
    );
  }
}

class _Destacado extends StatelessWidget {
  const _Destacado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: size.width * .03,
        bottom: size.width * .06,
        right: size.width * .03,
        top: size.width * .03,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black,
      ),
    );
  }
}
