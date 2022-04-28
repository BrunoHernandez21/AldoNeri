import 'package:aldo_neri/src/helpers/new_icons.dart';
import 'package:aldo_neri/src/widgets/text.dart';
import 'package:flutter/material.dart';

class TarjetaCompras extends StatefulWidget {
  final String title;
  final String precio;
  const TarjetaCompras({required this.precio, required this.title, Key? key})
      : super(key: key);

  @override
  State<TarjetaCompras> createState() => _TarjetaComprasState();
}

class _TarjetaComprasState extends State<TarjetaCompras> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            gradient: const LinearGradient(
              colors: [Color(0xFFFA8046), Color(0xFFF7A742)],
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
            ),
          ),
          child: const Icon(
            NewIcons.geometria_a,
            color: Colors.white,
            size: 50,
          ),
        ),
        Flexible(
          child: ListTile(
            title: Textos.parrafo(
              texto: widget.title,
            ),
            subtitle: Textos.parrafoNaranja(texto: 'MX \$' + widget.precio),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Column(
            children: [
              GestureDetector(
                child: Container(
                  width: 20,
                  height: 20,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade300,
                  ),
                  child: const Icon(Icons.remove, size: 20),
                ),
                onTap: () {
                  if (count == 1) return;
                  count -= 1;
                  setState(() {});
                },
              ),
              const SizedBox(height: 10),
              Text(count.toString()),
              const SizedBox(height: 10),
              GestureDetector(
                child: Container(
                  width: 20,
                  height: 20,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade300,
                  ),
                  child: const Icon(Icons.add, size: 20),
                ),
                onTap: () {
                  count += 1;
                  setState(() {});
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}
