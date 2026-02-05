import 'dart:convert';
import 'package:http/http.dart' as http;

class Weather {
  final String? shortDesc;
  final String accessoryRec;
  final String clothesRec;
  final String activitiesRec;
  final String alerts;

  final String? windSpeed;
  final String? temperature;
  final String? humidity;
  final String? vsibility;
  final String? sunshineDuration;

  Weather({
    required this.shortDesc,
    required this.accessoryRec,
    required this.clothesRec,
    required this.activitiesRec,
    required this.alerts,

    required this.windSpeed,
    required this.temperature,
    required this.humidity,
    required this.vsibility,
    required this.sunshineDuration,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      shortDesc: json['aiAnalysis']?['shortDes'],
      accessoryRec: json['aiAnalysis']?['accessoryRec'] ?? '-',
      clothesRec: json['aiAnalysis']?['clothesRec'] ?? '',
      activitiesRec: json['aiAnalysis']?['activitiesRec'] ?? '',
      alerts: json['aiAnalysis']?['alerts'] ?? '',

      windSpeed: json['data']?['ff'],
      temperature: json['data']?['t'],
      humidity: json['data']?['rh'],
      vsibility: json['data']?['visibility'],
      sunshineDuration: json['data']?['sd'],
    );
  }
}

class WeatherService {
  // Base URL of the API
  // static const String _baseUrl =
  //     'https://tourism.opendatahub.com/v1/Weather/Realtime';
  static const String _baseUrl = 'http://10.0.2.2:8080/api/weather/ai';

  /// Fetch weather data from the OpenDataHub API
  /// Returns a List of weather data
  Future<Weather> fetchWeather(double latitude, double longitude) async {
    // final uri = Uri.parse(
    //   '$_baseUrl?language=en&pagesize=1&pagenumber=1&latitude=$latitude&longitude=$longitude',
    // );
    final uri = Uri.parse('$_baseUrl?latitude=$latitude&longitude=$longitude');

    print('Fetching weather data from: $uri');
    final response = await http
        .get(uri, headers: {'accept': 'application/json'})
        .timeout(const Duration(seconds: 120));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      print('Weather data fetched successfully: ${data['aiAnalysis']}');
      // return Weather.fromJson(data['Items'][0]);
      return Weather.fromJson(data);
    } else {
      throw Exception(
        'Failed to load weather data: ${response.statusCode} - ${response.body}',
      );
    }
  }
}
