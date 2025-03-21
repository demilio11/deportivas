import 'package:deportivas/filas.dart';
import 'package:deportivas/selectores.dart';
import 'package:flutter/material.dart';

class AllScans extends StatefulWidget {
  const AllScans({super.key});

  @override
  State<AllScans> createState() => _AllScansState();
}

class _AllScansState extends State<AllScans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Fondo negro
      body: Padding(
        padding: EdgeInsets.only(top: 16.0, right: 16.0),
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
                  SelectorSitio(
                    onSelectedChange: () {
                      setState(() {
                        // Aquí puedes actualizar cualquier estado o valor que quieras en LastScan
                      });
                    },
                  ),
                  const SizedBox(width: 30),
                  AllOrOne(),
                  const SizedBox(width: 20),
                  // SelectorWidget se mantiene alineado a la derecha
                  SelectorWidget(
                    onSelectedChange: () {
                      setState(() {});
                    },
                  ),
                ],
              ),
              FilaAllTitlesWidget(),
              FilaFullListWidget()
            ],
          ),
        ),
      ),
    );
  }
}
