import 'package:firebase_database/firebase_database.dart';

Function estadoPrincipal = () {};

class FilaSimple {
  String fecha;
  String hora;
  String local;
  String visitante;
  String tipo;
  double linea;
  String? bet365;
  String? pinnacle;

  FilaSimple({
    required this.fecha,
    required this.hora,
    required this.local,
    required this.visitante,
    required this.tipo,
    required this.linea,
    this.bet365,
    this.pinnacle,
  });
}

class FilaCompleta {
  String fecha;
  String hora;
  String local;
  String visitante;
  double linea;
  String tipo;
  String arranque;
  String? hs48;
  String? hs36;
  String? hs24;
  String? hs20;
  String? hs16;
  String? hs12;
  String? hs8;
  String? hs4;
  String? hs2;
  String? hs1;
  String? mins30;
  String? cierre;

  FilaCompleta({
    required this.fecha,
    required this.hora,
    required this.local,
    required this.visitante,
    required this.linea,
    required this.tipo,
    required this.arranque,
    this.hs48,
    this.hs36,
    this.hs24,
    this.hs20,
    this.hs16,
    this.hs12,
    this.hs8,
    this.hs4,
    this.hs2,
    this.hs1,
    this.mins30,
    this.cierre,
  });
}

final List<String> paises = [
  'España',
  'Inglaterra',
  'Italia',
  'Alemania',
  'Francia',
  'Portugal',
  'Países Bajos',
  'Argentina',
  'Brasil',
  'México',
  'Paraguay',
  'EE.UU.',
  'Colombia',
  'Chile',
  'Uruguay',
  'Bélgica',
  'Suiza',
  'Escocia',
  'Japón',
  'Corea del Sur'
];

final Map<String, List<String>> ligas = {
  'España': ['Primera RFEF', 'Segunda RFEF'],
  'Inglaterra': ['League One', 'League Two'],
  'Italia': ['Serie C'],
  'Alemania': ['Bundesliga', '3. Liga'],
  'Francia': ['Championnat National'],
  'Portugal': ['Liga Portugal 2', 'Liga Revelacao U23'],
  'Países Bajos': ['Eerste Divisie', 'Tweede Divisie'],
  'Argentina': ['Copa Argentina'],
  'Brasil': ['Serie C', 'Copa do Brasil'],
  'México': ['Liga de Expansión MX'],
  'Paraguay': ['Primera División', 'División Intermedia', 'Copa Paraguay'],
  'EE.UU.': ['USL Championship'],
  'Colombia': ['Copa BetPlay'],
  'Chile': ['Primera B'],
  'Uruguay': ['Primera División', 'Segunda División'],
  'Bélgica': ['Eerste Klasse B'],
  'Suiza': ['Challenge League'],
  'Escocia': ['Championship', 'League One', 'League Two'],
  'Japón': ['J1 League', 'J2 League'],
  'Corea del Sur': ['K League 1', 'K League 2'],
};

String paisSeleccionado = 'España';
String liga = 'Primera RFEF';
String sitio = 'Bet365';
bool isAllScansSelected = true;
//pais -> liga -> filas
Map<String, Map<String, List<FilaSimple>>> filasSimples = {
  //ejemplos
  'España': {
    'Primera RFEF': [
      FilaSimple(
        fecha: '2025-03-13',
        hora: '14:30',
        local: 'Real Madrid',
        visitante: 'Barcelona',
        tipo: 'over/under',
        linea: 1,
        bet365: '1.5',
        pinnacle: '2.0',
      ),
      FilaSimple(
        fecha: '2025-03-13',
        hora: '14:30',
        local: 'Real Madrid',
        visitante: 'Barcelona',
        tipo: 'over/under',
        linea: 1,
        bet365: '1.5',
        pinnacle: '2.0',
      ),
    ],
  },
  'Inglaterra': {
    'League One': [
      FilaSimple(
        fecha: '2025-03-14',
        hora: '16:00',
        local: 'Chelsea',
        visitante: 'Manchester United',
        tipo: 'over/under',
        linea: 2,
        bet365: '1.8',
        pinnacle: '1.9',
      ),
    ],
  },
};
//pais -> liga -> sitio -> filas
Map<String, Map<String, Map<String, List<FilaCompleta>>>> filasCompletas = {
  'España': {
    'Primera RFEF': {
      'Bet365': [
        FilaCompleta(
          fecha: '2025-03-13',
          hora: '14:30',
          local: 'Real Madrid',
          visitante: 'Barcelona',
          linea: 1,
          tipo: 'over/under',
          arranque: '1.5',
          cierre: '2.0',
          hs48: '1.6',
          hs24: '1.7',
          hs8: '1.8',
        ),
        FilaCompleta(
          fecha: '2025-03-13',
          hora: '16:00',
          local: 'Sevilla',
          visitante: 'Valencia',
          linea: 2,
          tipo: 'over/under',
          arranque: '2.5',
          cierre: '3.0',
          hs36: '2.6',
          hs12: '2.8',
          hs2: '2.9',
        ),
        FilaCompleta(
          fecha: '2025-03-14',
          hora: '17:00',
          local: 'Atletico Madrid',
          visitante: 'Getafe',
          linea: 1,
          tipo: 'over/under',
          arranque: '1.7',
          cierre: '1.9',
          hs48: '1.75',
          hs36: '1.78',
          hs24: '1.8',
          hs12: '1.82',
          hs8: '1.83',
          hs4: '1.84',
          hs2: '1.85',
          hs1: '1.86',
          mins30: '1.86',
        ),
      ],
      'Pinnacle': [
        FilaCompleta(
          fecha: '2025-03-14',
          hora: '17:00',
          local: 'Atletico Madrid',
          visitante: 'Getafe',
          linea: 1,
          tipo: 'over/under',
          arranque: '1.7',
          cierre: '1.9',
          hs48: '1.75',
          hs24: '1.80',
          hs4: '1.85',
        ),
      ],
    },
  },
  'Inglaterra': {
    'League One': {
      'Bet365': [
        FilaCompleta(
          fecha: '2025-03-14',
          hora: '16:00',
          local: 'Chelsea',
          visitante: 'Manchester United',
          linea: 2,
          tipo: 'over/under',
          arranque: '1.8',
          cierre: '1.9',
          hs48: '1.85',
          hs12: '1.87',
          mins30: '1.89',
        ),
      ],
      'Pinnacle': [
        FilaCompleta(
          fecha: '2025-03-14',
          hora: '18:00',
          local: 'Arsenal',
          visitante: 'Tottenham',
          linea: 3,
          tipo: 'over/under',
          arranque: '2.0',
          cierre: '2.1',
          hs24: '2.05',
          hs8: '2.08',
          hs1: '2.09',
        ),
      ],
    },
  },
};

final fulboRef = FirebaseDatabase.instance.ref("Football");
