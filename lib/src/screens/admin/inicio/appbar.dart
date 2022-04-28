import 'package:flutter/material.dart';

import '../../../widgets/text.dart';

class AppbarInicio extends StatelessWidget {
  const AppbarInicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: SizedBox(
        height: 50,
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 10),
              child: CircleAvatar(
                child: Text('BZ'),
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
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
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
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                              color: const Color(0xffF2BC3F),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Text(
                              '3',
                              style: TextStyle(
                                  color: Color(0xffFCF2D8),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 11),
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
                IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
