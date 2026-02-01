import 'dart:convert';
import 'package:http/http.dart' as http;

class Event {
  final String id;
  final String name;

  final double latitude;
  final double longitude;

  final String startDay;
  final String startTime;
  final String endDay;
  final String endTime;

  final String contactUrl;
  final String city;
  final String address;
  final String countryName;

  final bool ticketRequired;

  Event({
    required this.id,
    required this.name,
    required this.latitude,
    required this.longitude,
    required this.startDay,
    required this.startTime,
    required this.endDay,
    required this.endTime,

    required this.contactUrl,
    required this.city,
    required this.address,
    required this.countryName,
    required this.ticketRequired,
  });

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
      id: json['Id'] ?? '',
      name: json['Detail']?['en']?['Title'] ?? '',

      latitude: json['Latitude'] ?? '',
      longitude: json['Longitude'] ?? '',

      startDay: json['EventDate']?[0]?['From'] ?? '',
      startTime: json['EventDate']?[0]?['Begin'] ?? '',
      endDay: json['EventDate']?[0]?['To'] ?? '',
      endTime: json['EventDate']?[0]?['End'] ?? '',

      contactUrl: json['ContactInfos']?['en']?['Url'] ?? '',
      city: json['ContactInfos']?['en']?['City'] ?? '',
      address: json['ContactInfos']?['en']?['Address'] ?? '',
      countryName: json['ContactInfos']?['en']?['CountryName'] ?? '',

      ticketRequired: json['EventProperty']?['TicketRequired'] ?? false,
    );
  }
}

class EventService {
  // Base URL of the API
  static const String _baseUrl = 'https://tourism.opendatahub.com/v1/Event';

  /// Fetch events from the OpenDataHub API
  /// Returns a List of events
  Future<List<Event>> fetchEvents({int pageNumber = 1}) async {
    final uri = Uri.parse(
      '$_baseUrl?pagenumber=$pageNumber&removenullvalues=true&getasidarray=false',
    );

    print('Fetching events from: $uri');
    final response = await http.get(uri, headers: {'accept': 'text/plain'});

    if (response.statusCode == 200) {
      print('Events fetched successfully');
      final data = jsonDecode(response.body);
      return (data['Items'] as List)
          .map((json) => Event.fromJson(json))
          .toList();
    } else {
      throw Exception('Failed to load events: ${response.statusCode}');
    }
  }
}
