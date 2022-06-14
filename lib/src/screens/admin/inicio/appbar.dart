import 'package:aldo_neri/src/helpers/variables_globales.dart';
import 'package:aldo_neri/src/screens/admin/notify.dart';
import 'package:flutter/material.dart';

import '../../../widgets/text.dart';

class AppbarInicio extends StatelessWidget {
  final void Function() onChange;
  const AppbarInicio({Key? key, required this.onChange}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Medidas.size.height * .1,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 10),
            child: GestureDetector(
              onTap: onChange,
              child: const CircleAvatar(
                child: Text('BZ'),
              ),
            ),
          ),
          Expanded(
              child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Textos.parrafo(texto: 'Hola ' "Bruno"),
                Textos.parrafoGrey(texto: 'Bienvenido de regreso'),
              ],
            ),
          )),
          SizedBox(
            height: 34,
            width: 34,
            child: GestureDetector(
              child: Stack(
                children: [
                  const Icon(Icons.notifications, size: 27),
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
                Navigator.of(context).pushNamed(Notify.routeName);
              },
            ),
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}
