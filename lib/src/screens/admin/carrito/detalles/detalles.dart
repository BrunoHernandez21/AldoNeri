import 'package:aldo_neri/src/helpers/variables_globales.dart';
import 'package:aldo_neri/src/widgets/botones.dart';
import 'package:aldo_neri/src/widgets/inputs_text.dart';
import 'package:aldo_neri/src/widgets/text.dart';
import 'package:flutter/material.dart';

import '../../../../helpers/new_icons.dart';
import 'tarjeta.dart';

class Detalles extends StatelessWidget {
  const Detalles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 40),
            child: TarjetaCompras(
              precio: '3000',
              title: 'Encuentro terapeurico Marzo 2023',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                SizedBox(
                  width: Medidas.size.width * .80,
                  child: const TarjetaCompras(
                    precio: '3000',
                    title: 'Encuentro terapeurico Marzo 2023',
                  ),
                ),
                Container(
                  width: 45,
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                      colors: [Color(0xFFFA8046), Color(0xFFF7A742)],
                      begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomCenter,
                    ),
                  ),
                  alignment: Alignment.center,
                  child: GestureDetector(
                    child:
                        const Icon(Icons.delete, color: Colors.white, size: 25),
                    onTap: () {},
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, top: 15),
                  child: SizedBox(
                    width: Medidas.size.width * .4,
                    height: 50,
                    child: InputsText.box(
                      hintText: 'Codigo de cupon',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: SizedBox(
                    width: Medidas.size.width * .4,
                    height: 60,
                    child: Botones.degradedTextButtonOrange(
                      text: 'Aplicar cupón',
                      onTap: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
            child: _Info(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Botones.degradedTextButtonOrange(
                text: 'Check out', onTap: () {}),
          ),
        ],
      ),
    );
  }
}

class _Info extends StatelessWidget {
  const _Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Textos.tituloGrey(texto: 'Subtotal'),
            Textos.tituloGrey(texto: '\$3000'),
          ],
        ),
        const Divider(
          color: Colors.grey,
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Textos.tituloGrey(texto: 'Descuentos'),
            Textos.tituloGrey(texto: ''),
          ],
        ),
        const Divider(
          color: Colors.grey,
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Textos.tituloGrey(texto: 'Total'),
            Textos.tituloGrey(texto: '\$3000'),
          ],
        ),
        const Divider(
          color: Colors.grey,
          height: 10,
        )
      ],
    );
  }
}
