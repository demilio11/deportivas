import 'package:deportivas/filas.dart';
import 'package:deportivas/selectores.dart';
import 'package:flutter/material.dart';

class LastScan extends StatefulWidget {
  const LastScan({super.key});

  @override
  State<LastScan> createState() => _LastScanState();
}

class _LastScanState extends State<LastScan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Fondo negro
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0, right: 16.0),
        child: Align(
          alignment: Alignment.topCenter, // Centrado horizontalmente
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start, // Centrado desde arriba
            crossAxisAlignment: CrossAxisAlignment.center, // Centrado horizontal
            children: [
              // Row con los botones AllOrOne y SelectorWidget
              Row(
                mainAxisAlignment: MainAxisAlignment.end, // Alinea el contenido al principio
                children: [
                  const AllOrOne(),
                  const SizedBox(width: 20),
                  // SelectorWidget se mantiene alineado a la derecha
                  SelectorWidget(
                    onSelectedChange: () {
                      setState(() {});
                    },
                  ),
                ],
              ),
              const FilaTitlesWidget(),
              const FilaListWidget()
            ],
          ),
        ),
      ),
    );
  }
}
