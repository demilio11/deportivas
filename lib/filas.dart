import 'package:deportivas/frontend.dart';
import 'package:deportivas/globales.dart';
import 'package:flutter/material.dart';

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

class FilaListWidget extends StatelessWidget {
  const FilaListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: filasSimples[paisSeleccionado]?[liga]?.length ?? 0,
        itemBuilder: (context, index) {
          final fila = filasSimples[paisSeleccionado]?[liga]?[index];
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
                        textoColumna(text: fila.tipo),
                        buildDivider(),
                        textoColumna(text: fila.linea.toString()),
                        buildDivider(),
                        textoColumna(text: fila.bet365 ?? ""),
                        buildDivider(),
                        textoColumna(text: fila.pinnacle ?? ""),
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

class FilaAllTitlesWidget extends StatelessWidget {
  const FilaAllTitlesWidget({
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
              const textoColumna(text: 'Tipo'),
              buildDivider(),
              const textoColumna(text: 'Arranque'),
              buildDivider(),
              const textoColumna(text: '48hs antes'),
              buildDivider(),
              const textoColumna(text: '36hs antes'),
              buildDivider(),
              const textoColumna(text: '24hs antes'),
              buildDivider(),
              const textoColumna(text: '20hs antes'),
              buildDivider(),
              const textoColumna(text: '16hs antes'),
              buildDivider(),
              const textoColumna(text: '12hs antes'),
              buildDivider(),
              const textoColumna(text: '8hs antes'),
              buildDivider(),
              const textoColumna(text: '4hs antes'),
              buildDivider(),
              const textoColumna(text: '2hs antes'),
              buildDivider(),
              const textoColumna(text: '1h antes'),
              buildDivider(),
              const textoColumna(text: '30min antes'),
              buildDivider(),
              const textoColumna(text: 'Cierre'),
            ],
          ),
        ],
      ),
    );
  }
}

class FilaFullListWidget extends StatelessWidget {
  const FilaFullListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: filasCompletas[paisSeleccionado]?[liga]?[sitio]?.length ?? 0,
        itemBuilder: (context, index) {
          FilaCompleta fila = filasCompletas[paisSeleccionado]![liga]![sitio]![index];
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
                        textoColumna(text: fila.fecha),
                        buildDivider(),
                        textoColumna(text: fila.hora),
                        buildDivider(),
                        textoColumna(text: fila.local),
                        buildDivider(),
                        textoColumna(text: fila.visitante),
                        buildDivider(),
                        textoColumna(text: fila.linea.toString()),
                        buildDivider(),
                        textoColumna(text: fila.tipo),
                        buildDivider(),
                        textoColumna(text: fila.arranque),
                        buildDivider(),
                        textoColumna(text: fila.hs48 ?? ""),
                        buildDivider(),
                        textoColumna(text: fila.hs36 ?? ""),
                        buildDivider(),
                        textoColumna(text: fila.hs24 ?? ""),
                        buildDivider(),
                        textoColumna(text: fila.hs20 ?? ""),
                        buildDivider(),
                        textoColumna(text: fila.hs16 ?? ""),
                        buildDivider(),
                        textoColumna(text: fila.hs12 ?? ""),
                        buildDivider(),
                        textoColumna(text: fila.hs8 ?? ""),
                        buildDivider(),
                        textoColumna(text: fila.hs4 ?? ""),
                        buildDivider(),
                        textoColumna(text: fila.hs2 ?? ""),
                        buildDivider(),
                        textoColumna(text: fila.hs1 ?? ""),
                        buildDivider(),
                        textoColumna(text: fila.mins30 ?? ""),
                        buildDivider(),
                        textoColumna(text: fila.cierre ?? ""),
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
