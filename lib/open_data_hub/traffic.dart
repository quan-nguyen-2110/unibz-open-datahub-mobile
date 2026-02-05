import 'dart:convert';
import 'package:http/http.dart' as http;

class Traffic {
  final String latitude;
  final String? longitude;

  final String active;
  final String startTime;
  final String endTime;

  final String title;
  final String content;

  final String category;

  Traffic({
    required this.latitude,
    required this.longitude,

    required this.active,
    required this.startTime,
    required this.endTime,

    required this.title,
    required this.content,

    required this.category,
  });

  String formatDates() {
    var startString = startTime.isEmpty ? 'N/A' : startTime;
    var endString = endTime.isEmpty ? 'N/A' : endTime;

    const months = [
      '',
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ];

    if (startTime.isNotEmpty) {
      final start = DateTime.parse(startTime);
      startString = '${months[start.month]} ${start.day}';
    }

    if (endTime.isNotEmpty) {
      final end = DateTime.parse(endTime);
      endString = '${months[end.month]} ${end.day}';
    }

    return '$startString - $endString';
  }

  factory Traffic.fromJson(Map<String, dynamic> json) {
    return Traffic(
      latitude: json['latitude']?.toString() ?? '',
      longitude: json['longitude']?.toString() ?? '',

      active: json['active']?.toString() ?? '',
      startTime: json['startTime']?.toString() ?? '',
      endTime: json['endTime']?.toString() ?? '',

      title: json['title']?.toString() ?? '',
      content: json['content']?.toString() ?? '',
      category: json['category']?.toString() ?? '',
    );
  }
}

class TrafficService {
  // Base URL of the API
  // static const String _baseUrl =
  //     'https://tourism.opendatahub.com/v1/Weather/Realtime';
  static const String _baseUrl =
      'http://10.0.2.2:8080/api/ai?component=traffic';

  /// Fetch traffic data from the OpenDataHub API
  /// Returns a List of traffic data
  Future<List<Traffic>> fetchTraffic(double latitude, double longitude) async {
    final uri = Uri.parse('$_baseUrl');

    print('Fetching traffic data from: $uri');
    final response = await http
        .get(uri, headers: {'accept': 'application/json'})
        .timeout(const Duration(seconds: 120));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final List<Map<String, dynamic>> ai = (jsonDecode(
        data['aiAnalysis'],
      )).cast<Map<String, dynamic>>();
      print('Traffic data fetched successfully: ${data['aiAnalysis']}');
      // return Weather.fromJson(data['Items'][0]);
      return ai.map((item) => Traffic.fromJson(item)).toList();
    } else {
      throw Exception(
        'Failed to load traffic data: ${response.statusCode} - ${response.body}',
      );
    }
  }
}
