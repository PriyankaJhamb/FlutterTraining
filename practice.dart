void main() {
  var Maharashtra = {'confirmed': 6229596, 'active': 6000911};

  var Kerala = {'confirmed': 3187716, 'active': 3045310};

  var Karnataka = {'confirmed': 318771, 'active': 345310};

  var Tamil_Nadu = {'confirmed': 318776, 'active': 304531};

  var Andhra_Pradesh = {'confirmed': 18776, 'active': 4531};

  var city = [Maharashtra, Kerala, Karnataka, Tamil_Nadu, Andhra_Pradesh];
  print("Before sorting ${city}");
  int n = city.length - 1;
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n - i; j++) {
      if (city[j]['active']! > city[j + 1]['active']!) {
        int temp = city[j]['active']!;
        city[j]['active'] = city[j + 1]['active']!;
        city[j + 1]['active'] = temp;
      }
    }
  }

  print('After sorting ${city}');
}