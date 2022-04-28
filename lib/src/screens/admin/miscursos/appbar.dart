import 'package:flutter/material.dart';

import '../../../widgets/text.dart';

class AppbarCursos extends StatelessWidget {
  const AppbarCursos({Key? key}) : super(key: key);

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
            Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 5),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_back_ios),
                )),
            Flexible(
              child: Center(
                child: Textos.parrafo(
                  texto: 'Mis Cursos',
                ),
              ),
            ),
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
      ),
    );
  }
}
