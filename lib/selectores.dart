import 'package:deportivas/frontend.dart';
import 'package:deportivas/globales.dart';
import 'package:flutter/material.dart';

class SelectorWidget extends StatefulWidget {
  const SelectorWidget({super.key});

  @override
  _SelectorWidgetState createState() => _SelectorWidgetState();
}

class _SelectorWidgetState extends State<SelectorWidget> {
  // Inicializando los valores seleccionados
  String selectedCountry = 'España';
  // Listados de opciones

  @override
  Widget build(BuildContext context) {
    String selectedLeague = ligas[selectedCountry]![0];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // Selector de País
            DropdownButton<String>(
              value: selectedCountry,
              icon: const Icon(Icons.arrow_downward),
              elevation: 16,
              style: const TextStyle(
                color: blanco,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              dropdownColor: negro,
              onChanged: (String? newValue) {
                setState(() {
                  selectedCountry = newValue!;
                  pais = newValue;
                });
              },
              items: paises.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: const TextStyle(
                      color: blanco,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              }).toList(),
            ),
            const SizedBox(width: 30),
            // Selector de Liga
            DropdownButton<String>(
              value: selectedLeague,
              icon: const Icon(Icons.arrow_downward),
              elevation: 16,
              style: const TextStyle(
                color: blanco,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              dropdownColor: negro,
              onChanged: (String? newValue) {
                setState(() {
                  selectedLeague = newValue!;
                  liga = newValue;
                });
              },
              items: ligas[selectedCountry]!.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: const TextStyle(
                      color: blanco,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ],
    );
  }
}

class AllOrOne extends StatefulWidget {
  const AllOrOne({super.key});

  @override
  _AllOrOneState createState() => _AllOrOneState();
}

class _AllOrOneState extends State<AllOrOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white), // Borde blanco
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min, // Esto evita que los botones ocupen demasiado espacio
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isAllScansSelected = true;
                estadoPrincipal();
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              decoration: BoxDecoration(
                color: isAllScansSelected ? Colors.blue : Colors.black, // Color de fondo
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  bottomLeft: Radius.circular(8.0),
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                "Todos los escaneos",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: isAllScansSelected ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isAllScansSelected = false;
                estadoPrincipal();
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              decoration: BoxDecoration(
                color: !isAllScansSelected ? Colors.blue : Colors.black, // Color de fondo
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(8.0),
                  bottomRight: Radius.circular(8.0),
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                "Último escaneo",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: !isAllScansSelected ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
