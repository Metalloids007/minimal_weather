class Weather {
  final String cityName;
  final double tempareture;
  final String mainCondition;

  Weather({
    required this.cityName,
    required this.tempareture,
    required this.mainCondition,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
        cityName: json['name'],
        tempareture: json['main']['temp'].toDouble(),
        mainCondition: json['weather'][0]['main']
        );
  }
}
