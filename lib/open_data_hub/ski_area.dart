import 'dart:convert';
import 'package:http/http.dart' as http;

class SkiArea {
  final String totalSlopeKm;
  final String slopeKmBlue;
  final String logoUrl;
  final String url;
  final String latitude;
  final String longitude;
  final String title;

  final String slopeKmBlack;
  final String slopeKmRed;
  final String city;
  final String fullDescription;

  final String startDay;
  final String image;
  final String active;
  final String phone;

  final String country;
  final String liftCount;
  final String endDay;

  final String snowHeight;
  final String newSnowHeight;
  final String temperature;
  final String lastSnowDate;

  final String aiAreaDesc;
  final List<Map<String, dynamic>> aiGuestReviews;
  final String aiRecommenDes;
  final String aiPriceRange;
  final String aiAlert;

  final String aiSkiingWarning;
  final String aiSafetyWarning;
  final String aiEquipmentWarning;
  final String aiWeatherWarning;

  SkiArea({
    required this.totalSlopeKm,
    required this.slopeKmBlue,
    required this.logoUrl,
    required this.url,
    required this.latitude,
    required this.longitude,
    required this.title,

    required this.slopeKmBlack,
    required this.slopeKmRed,
    required this.city,
    required this.fullDescription,

    required this.startDay,
    required this.image,
    required this.active,
    required this.phone,

    required this.country,
    required this.liftCount,
    required this.endDay,

    required this.snowHeight,
    required this.newSnowHeight,
    required this.temperature,
    required this.lastSnowDate,

    required this.aiAreaDesc,
    required this.aiGuestReviews,
    required this.aiRecommenDes,
    required this.aiPriceRange,
    required this.aiAlert,

    required this.aiSkiingWarning,
    required this.aiSafetyWarning,
    required this.aiEquipmentWarning,
    required this.aiWeatherWarning,
  });

  String formatSnowDate() {
    if (lastSnowDate.isEmpty) {
      return 'N/A';
    }

    final date = DateTime.parse(lastSnowDate);

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

    return '${months[date.month]} ${date.day}';
  }

  String formatSeason() {
    if (startDay.isEmpty || endDay.isEmpty) {
      return 'N/A';
    }

    final start = DateTime.parse(startDay);
    final end = DateTime.parse(endDay);

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

    return '${months[start.month]} ${start.day} - '
        '${months[end.month]} ${end.day}';
  }

  factory SkiArea.fromJson(Map<String, dynamic> json) {
    return SkiArea(
      totalSlopeKm: json['totalSlopeKm']?.toString() ?? '-',
      slopeKmBlue: json['slopeKmBlue']?.toString() ?? '-',
      logoUrl: json['logoUrl']?.toString() ?? '',
      url: json['url']?.toString() ?? '',
      latitude: json['latitude']?.toString() ?? '-',
      longitude: json['longitude']?.toString() ?? '-',
      title: json['title']?.toString() ?? '',

      slopeKmBlack: json['slopeKmBlack']?.toString() ?? '-',
      slopeKmRed: json['slopeKmRed']?.toString() ?? '-',
      city: json['city']?.toString() ?? '',
      fullDescription: json['fullDescription']?.toString() ?? '',

      startDay: json['startDay']?.toString() ?? '',
      image: json['image']?.toString() ?? '',
      active: json['active']?.toString() ?? '',
      phone: json['phone']?.toString() ?? '',

      country: json['country']?.toString() ?? '',
      liftCount: json['liftCount']?.toString() ?? '-',
      endDay: json['endDay']?.toString() ?? '',

      snowHeight: json['snowHeight']?.toString() ?? '-',
      newSnowHeight: json['newSnowHeight']?.toString() ?? '-',
      temperature: json['temperature']?.toString() ?? '-',
      lastSnowDate: json['lastSnowDate']?.toString() ?? '',

      aiAreaDesc: json['aiAnalysis']['areaDescription']?.toString() ?? '',
      aiGuestReviews: List<Map<String, dynamic>>.from(
        json['aiAnalysis']['listGuestReview'] ?? [],
      ),
      aiRecommenDes: json['aiAnalysis']['recommendDes']?.toString() ?? '',
      aiPriceRange: json['aiAnalysis']['priceRange']?.toString() ?? '',
      aiAlert: json['aiAnalysis']['alert']?.toString() ?? '',

      aiSkiingWarning:
          json['aiAnalysis']?['warning']?['skiing']?.toString() ?? '',
      aiSafetyWarning:
          json['aiAnalysis']?['warning']?['safety']?.toString() ?? '',
      aiEquipmentWarning:
          json['aiAnalysis']?['warning']?['equipment']?.toString() ?? '',
      aiWeatherWarning:
          json['aiAnalysis']?['warning']?['weatherForecast']?.toString() ?? '',
    );
  }
}

class SkiAreaService {
  // Base URL of the API
  // static const String _baseUrl =
  //     'https://tourism.opendatahub.com/v1/Weather/Realtime';
  static const String _baseUrl = 'http://10.0.2.2:8080/api/ski/ai';

  /// Fetch ski area data from the OpenDataHub API
  /// Returns a List of ski area data
  Future<List<SkiArea>> fetchSkiAreas(double latitude, double longitude) async {
    final uri = Uri.parse('$_baseUrl?latitude=$latitude&longitude=$longitude');

    print('Fetching ski area data from: $uri');
    final response = await http
        .get(uri, headers: {'accept': 'application/json'})
        .timeout(const Duration(seconds: 120));
    try {
      if (response.statusCode == 200) {
        print('Ski area data fetched successfully: ${response.body}');
        final Map<String, dynamic> data = jsonDecode(response.body);
        final List<Map<String, dynamic>> datas = (data['data'] as List)
            .cast<Map<String, dynamic>>();
        return datas.map((item) => SkiArea.fromJson(item)).toList();
      } else {
        throw Exception(
          'Failed to load ski area data: ${response.statusCode} - ${response.body}',
        );
      }
    } catch (e) {
      print('Error fetching ski area data: $e');
      return [];
    }
  }
}
