import 'dart:convert';
import 'package:http/http.dart' as http;

class Gastronomy {
  final String id;
  final String title;
  final String? imageUrl;
  final String? description;
  final String? city;
  final String? district;
  final String? category;

  Gastronomy({
    required this.id,
    required this.title,
    this.imageUrl,
    this.description,
    this.city,
    this.district,
    this.category,
  });

  factory Gastronomy.fromJson(Map<String, dynamic> json) {
    // Helper to safely get string values
    String? getString(String key) =>
        json[key]?.toString().isEmpty ?? true ? null : json[key].toString();

    return Gastronomy(
      id: json['Id'] ?? json['id'] ?? '',
      title: json['Shortname'] ?? json['title'] ?? 'Unknown',
      imageUrl: getString('ImageGallery') != null &&
              (json['ImageGallery'] as List).isNotEmpty
          ? (json['ImageGallery'] as List)[0]['Url']
          : getString('image'), // Fallback or handling specific API structure
      description: (json['Detail'] != null && json['Detail'] is Map)
          ? json['Detail']['en']?.toString()
          : getString('description'),
      city: getString('CityName') ?? getString('city'),
      district: getString('DistrictName') ?? getString('district'),
      category: getString('CategoryCodes') != null &&
              (json['CategoryCodes'] as List).isNotEmpty
          ? (json['CategoryCodes'] as List)[0]['Id']
          : null,
    );
  }
}

class GastronomyService {
  // Assuming the API endpoint structure
  static const String _baseUrl = 'http://10.0.2.2:8080/api/gastronomy';

  Future<List<Gastronomy>> fetchGastronomy(
      double latitude, double longitude) async {
    // Mock data for UI verification
    await Future.delayed(const Duration(milliseconds: 500));
    return [
      Gastronomy(
        id: '1',
        title: 'Alpine Delight Restaurant',
        imageUrl:
            'https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?ixlib=rb-4.0.3&auto=format&fit=crop&w=1470&q=80',
        description:
            'Experience the finest alpine cuisine in a cozy atmosphere.',
        city: 'Bolzano',
        category: 'Restaurant',
      ),
      Gastronomy(
        id: '2',
        title: 'Mountain View Bistro',
        imageUrl:
            'https://images.unsplash.com/photo-1552566626-52f8b828add9?ixlib=rb-4.0.3&auto=format&fit=crop&w=1470&q=80',
        description: 'Breathtaking views and delicious local dishes.',
        city: 'Merano',
        category: 'Bistro',
      ),
      Gastronomy(
        id: '3',
        title: 'Pizzeria Dolomites',
        imageUrl:
            'https://images.unsplash.com/photo-1574071318508-1cdbab80d002?ixlib=rb-4.0.3&auto=format&fit=crop&w=1470&q=80',
        description: 'Traditional wood-fired pizza.',
        city: 'Brixen',
        category: 'Pizzeria',
      ),
      Gastronomy(
        id: '4',
        title: 'Gourmet Valley',
        imageUrl:
            'https://images.unsplash.com/photo-1559339352-11d035aa65de?ixlib=rb-4.0.3&auto=format&fit=crop&w=1374&q=80',
        description: 'Fine dining experience in the heart of the valley.',
        city: 'Brunico',
        category: 'Fine Dining',
      ),
    ];
/*
    // If the API supports geo-location filtering
    final uri = Uri.parse('$_baseUrl?latitude=$latitude&longitude=$longitude');

    print('Fetching gastronomy data from: $uri');
    try {
      final response = await http
          .get(uri, headers: {'accept': 'application/json'}).timeout(
              const Duration(seconds: 10));

      if (response.statusCode == 200) {
        print('Gastronomy data fetched successfully');
        // Check if the response is a list or wrapped in 'data'
        final dynamic decoded = jsonDecode(response.body);
        List<dynamic> list;
        if (decoded is Map<String, dynamic> && decoded.containsKey('data')) {
           list = decoded['data'] as List;
        } else if (decoded is List) {
           list = decoded;
        } else {
           list = []; // Handle unexpected format
        }

        return list.map((item) => Gastronomy.fromJson(item)).toList();
      } else {
        print('Failed to load gastronomy data: ${response.statusCode}');
        return [];
      }
    } catch (e) {
      print('Error fetching gastronomy data: $e');
      return [];
    }
*/
  }
}
