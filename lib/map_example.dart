class MapExample {
  final Map<String, int> _marks = {
    'Ridwan': 100,
    'Rahman': 90,
    'Rahim': 80,
    'Karim': 70,
    'Rahat': 60,
  };

  void mapOperation() {
    _marks.forEach((key, value) {
      print('$key: $value');
    });
  }

  void listOfMap() {
    List<Map<String, int>> marks = [
      {
        'CS': 100,
        'Math': 90,
        'EEE': 80,
        'Economics': 70,
        'Bussiness': 60,
      },
      {
        'CS': 100,
        'Math': 90,
        'EEE': 80,
        'Economics': 70,
        'Bussiness': 60,
      },
      _marks
    ];

    print(marks.map((e) => e.containsKey('CS')).toList());
  }
}
