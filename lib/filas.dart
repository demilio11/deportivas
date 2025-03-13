import 'package:deportivas/frontend.dart';
import 'package:deportivas/globales.dart';
import 'package:flutter/material.dart';

class FilaListWidget extends StatelessWidget {
  const FilaListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: filasSimples[pais]?[liga]?.length ?? 0,
        itemBuilder: (context, index) {
          final fila = filasSimples[pais]?[liga]?[index];
          return Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                padding: const EdgeInsets.all(10.0), // Padding en la fila
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white), // Borde blanco para la fila
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.black,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        textoColumna(text: fila!.fecha),
                        buildDivider(),
                        textoColumna(text: fila.hora),
                        buildDivider(),
                        textoColumna(text: fila.local),
                        buildDivider(),
                        textoColumna(text: fila.visitante),
                        buildDivider(),
                        textoColumna(text: fila.linea.toString()),
                        buildDivider(),
                        textoColumna(text: fila.bet365),
                        buildDivider(),
                        textoColumna(text: fila.pinnacle),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

// ignore: camel_case_types
class textoColumna extends StatelessWidget {
  final String text;

  const textoColumna({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        textAlign: TextAlign.center,
        text,
        style: const TextStyle(
          color: blanco,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

Widget buildDivider() {
  return Container(
    width: 1,
    height: 40,
    color: Colors.white,
  );
}

class FilaTitlesWidget extends StatelessWidget {
  const FilaTitlesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
      padding: const EdgeInsets.all(10.0), // Padding en la fila
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white), // Borde blanco para la fila
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.black,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const textoColumna(text: 'Fecha'),
              buildDivider(),
              const textoColumna(text: 'Hora'),
              buildDivider(),
              const textoColumna(text: 'Local'),
              buildDivider(),
              const textoColumna(text: 'Visitante'),
              buildDivider(),
              const textoColumna(text: 'Linea'),
              buildDivider(),
              const textoColumna(text: 'Bet365'),
              buildDivider(),
              const textoColumna(text: 'Pinnacle'),
            ],
          ),
        ],
      ),
    );
  }
}
