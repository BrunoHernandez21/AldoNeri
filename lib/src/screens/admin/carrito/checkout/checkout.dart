import 'package:aldo_neri/src/widgets/botones.dart';
import 'package:aldo_neri/src/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

import '../../../../bloc/carrito/carrito_bloc.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  bool onMove = true;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CarritoBloc, CarritoState>(
      builder: (context, state) {
        return onMove
            ? _Tarjetas(
                onchage: onMoveF,
              )
            : _InputTarjetas(
                onchage: onMoveF,
              );
      },
    );
  }

  void onMoveF() {
    onMove = !onMove;
    setState(() {});
  }
}

class _Tarjetas extends StatelessWidget {
  final void Function() onchage;
  const _Tarjetas({Key? key, required this.onchage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Textos.titulo(texto: "Selecciona tu metodo de pago"),
        const _Tarjeta(),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 20.0, top: 10),
            child: Textos.parrafoHiper(
              texto: "",
              hipertext: "Agregar nueva tarjeta",
              onTap: onchage,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Botones.degradedTextButtonOrange(
            text: "Pagar",
            onTap: () {},
          ),
        )
      ]),
    );
  }
}

class _Tarjeta extends StatefulWidget {
  const _Tarjeta({Key? key}) : super(key: key);

  @override
  State<_Tarjeta> createState() => __TarjetaState();
}

class __TarjetaState extends State<_Tarjeta> {
  int? j;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: iterador(),
    );
  }

  List<Widget> iterador() {
    List<Widget> i = [];
    int s = 0;
    for (int n in [0, 1, 2, 3]) {
      s = n;
      i.add(Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Colors.white),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RoundCheckBox(
                  isChecked: n == j,
                  size: 30,
                  onTap: (selected) {
                    j = n;
                    setState(() {});
                  },
                ),
                Textos.titulo(texto: "xxxx-xxxx-xxxx-1234")
              ],
            ),
            j == n
                ? CreditCardWidget(
                    cardNumber: "2121212121211234",
                    expiryDate: "01/07",
                    cardHolderName: "Panchito",
                    cvvCode: "",
                    showBackView: false,
                    onCreditCardWidgetChange:
                        (creditCardBrand) {}, //true when you want to show cvv(back) view
                  )
                : const SizedBox(),
          ],
        ),
      ));
    }
    s += 1;
    i.add(Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RoundCheckBox(
            isChecked: s == j,
            size: 30,
            onTap: (selected) {
              j = s;
              setState(() {});
            },
          ),
          Textos.titulo(texto: "Paypal")
        ],
      ),
    ));
    final int p = s + 1;
    i.add(Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RoundCheckBox(
            isChecked: p == j,
            size: 30,
            onTap: (selected) {
              j = p;
              setState(() {});
            },
          ),
          Textos.titulo(texto: "Oxxo")
        ],
      ),
    ));
    return i;
  }
}

class _InputTarjetas extends StatefulWidget {
  final void Function() onchage;
  const _InputTarjetas({Key? key, required this.onchage}) : super(key: key);

  @override
  State<_InputTarjetas> createState() => _InputTarjetasState();
}

class _InputTarjetasState extends State<_InputTarjetas> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 40,
            width: double.infinity,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: widget.onchage,
                  ),
                ),
                Center(
                  child: Textos.titulo(texto: "Agregar Tarjeta"),
                ),
              ],
            ),
          ),
          CreditCardForm(
            formKey: GlobalKey<FormState>(), // Required
            onCreditCardModelChange: (CreditCardModel data) {}, // Required
            themeColor: Colors.black,
            obscureCvv: true,
            obscureNumber: true,
            isHolderNameVisible: true,
            isCardNumberVisible: true,
            isExpiryDateVisible: true,
            cardNumberDecoration: const InputDecoration(
              border: OutlineInputBorder(),
              suffixIcon: Icon(Icons.date_range),
              labelText: 'Number',
              hintText: 'XXXX XXXX XXXX XXXX',
            ),
            expiryDateDecoration: const InputDecoration(
              focusColor: Colors.orange,
              border: OutlineInputBorder(),
              suffixIcon: Icon(Icons.date_range),
              labelText: 'Expired Date',
              hintText: 'XX/XX',
            ),
            cvvCodeDecoration: const InputDecoration(
              border: OutlineInputBorder(),
              focusColor: Colors.orange,
              suffixIcon: Icon(Icons.date_range),
              labelText: 'CVV',
              hintText: 'XXX',
            ),
            cardHolderDecoration: const InputDecoration(
              border: OutlineInputBorder(),
              focusColor: Colors.orange,
              suffixIcon: Icon(Icons.date_range),
              labelText: 'Card Holder',
            ),
            cardHolderName: '',
            cardNumber: '',
            cvvCode: '',
            expiryDate: '',
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child:
                Botones.degradedTextButtonOrange(text: "Agregar", onTap: () {}),
          )
        ],
      ),
    );
  }
}
