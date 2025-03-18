import 'package:deportivas/globales.dart';

Future pickData() async {
  final snapshot = await fulboRef.get();
  filasSimples = {};

  if (snapshot.exists) {
    for (var pais in snapshot.children) {
      for (var fecha in pais.children) {
        for (var hora in fecha.children) {
          for (var local in hora.children) {
            final equipoLocal = local.key;
            for (var visitante in local.children) {
              final equipoVisitante = visitante.key;
              for (var tipo in visitante.children) {
                final tipoLinea = tipo.key; // "Over-Under"
                for (var linea in tipo.children) {
                  final valorLinea = linea.key; // "+2,25"
                    // Agregar a la lista de filas

                  }
                  String hs48 = "", hs36 = "", hs24 = "", hs20 = "", hs16 = "", hs12 = "", hs8 = "", hs4 = "", hs2 = "", hs1 = "", mins30 = "";

                  for (var scan in linea.child('Pinnacle').children) {

                  }
                  FilaCompleta fila = FilaCompleta(
                      fecha: fecha.key!.substring(0, fecha.key!.length - 2),
                      hora: hora.key!,
                      local: equipoLocal!,
                      visitante: equipoVisitante!,
                      linea: double.tryParse(valorLinea!) ?? 0,
                      tipo: tipoLinea!,
                      arranque: "arranque",
                      hs48: hs48, hs36: hs36, hs24: hs24, hs20: hs20, hs16: hs16, hs12: hs12, hs8: hs8, hs4: hs4, hs2: hs2, hs1: hs1, mins30: mins30;
 );
                  filasCompletas[pais.key]!["Copa Argentina"]!['Pinnacle']?.add(fila);
                  for (var scan in linea.child('Bet365').children) {}
                  filasCompletas[pais.key]!["Copa Argentina"]!['Bet365']?.add(fila);
                }
              }
            }
          }
        }
      }
    }
  }
}
