import 'dart:convert';
import 'package:http/http.dart' as http;

class Weather {
  final String evolutiontitle;
  final String evolution;

  final String date;
  final String title;
  final String weatherDesc;
  final String weatherImgUrl;

  final int tempMaxmax;
  final int tempMaxmin;
  final int tempMinmax;
  final int tempMinmin;

  Weather({
    required this.evolutiontitle,
    required this.evolution,

    required this.date,
    required this.title,
    required this.weatherDesc,
    required this.weatherImgUrl,

    required this.tempMaxmax,
    required this.tempMaxmin,
    required this.tempMinmax,
    required this.tempMinmin,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      evolutiontitle: json['EvolutionTitle'] ?? '',
      evolution: json['Evolution'] ?? '',

      date: json['Conditions']?[0]?['Date'] ?? '',
      title: json['Conditions']?[0]?['Title'] ?? '',
      weatherDesc: json['Conditions']?[0]?['WeatherDesc'] ?? '',
      weatherImgUrl: json['Conditions']?[0]?['WeatherImgUrl'] ?? '',

      tempMaxmax: json['Conditions']?[0]?['TempMaxmax'] ?? '',
      tempMaxmin: json['Conditions']?[0]?['TempMaxmin'] ?? '',
      tempMinmax: json['Conditions']?[0]?['TempMinmax'] ?? '',
      tempMinmin: json['Conditions']?[0]?['TempMinmin'] ?? '',
    );
  }
}

class WeatherService {
  // Base URL of the API
  static const String _baseUrl = 'https://tourism.opendatahub.com/v1/Weather';

  /// Fetch weather data from the OpenDataHub API
  /// Returns a List of weather data
  Future<Weather> fetchWeather({int pageNumber = 1}) async {
    final uri = Uri.parse('$_baseUrl?language=en&extended=true');

    print('Fetching weather data from: $uri');
    final response = await http.get(uri, headers: {'accept': 'text/plain'});

    if (response.statusCode == 200) {
      print('Weather data fetched successfully');
      final data = jsonDecode(response.body);
      return Weather.fromJson(data);
    } else {
      throw Exception('Failed to load weather data: ${response.statusCode}');
    }
  }
}
