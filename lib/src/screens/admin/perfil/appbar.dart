import 'package:flutter/material.dart';

import '../../../widgets/text.dart';
import '../notify.dart';

class AppbarMiPerfil extends StatelessWidget {
  final TabController controller;
  const AppbarMiPerfil({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: SizedBox(
        height: 50,
        width: double.infinity,
        child: Stack(
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: IconButton(
                  onPressed: () {
                    controller.animateTo(0);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                  ),
                )),
            Center(
              child: Textos.titulo(
                texto: 'Mi Perfil',
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
