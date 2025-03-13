Function estadoPrincipal = () {};

class FilaSimple {
  String fecha;
  String hora;
  String local;
  String visitante;
  int linea;
  String bet365;
  String pinnacle;

  FilaSimple({
    required this.fecha,
    required this.hora,
    required this.local,
    required this.visitante,
    required this.linea,
    required this.bet365,
    required this.pinnacle,
  });
}

class FilaCompleta {
  String fecha; // Fecha del evento
  String hora; // Hora del evento
  String local; // Local del evento
  String visitante; // Visitante del evento
  int linea; // Línea del evento, que es de tipo int
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

String pais = 'España';
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
        linea: 1,
        bet365: '1.5',
        pinnacle: '2.0',
      ),
      FilaSimple(
        fecha: '2025-03-13',
        hora: '14:30',
        local: 'Real Madrid',
        visitante: 'Barcelona',
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
        linea: 2,
        bet365: '1.8',
        pinnacle: '1.9',
      ),
    ],
  },
};
//pais -> liga -> sitio -> filas
Map<String, Map<String, Map<String, List<FilaSimple>>>> filasCompletas = {};
