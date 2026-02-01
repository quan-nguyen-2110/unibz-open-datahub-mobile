// location_service.dart
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class LocationService {
  /// Get current GPS position
  static Future<Position> getCurrentPosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Check if location services are enabled
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw Exception('Location services are disabled.');
    }

    // Check permission
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        throw Exception('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      throw Exception('Location permissions are permanently denied.');
    }

    // Get current position
    return await Geolocator.getCurrentPosition(
      // desiredAccuracy: LocationAccuracy.high,
    );
  }

  /// Get city name from coordinates
  static Future<String> getCityNameAndCountry(
    double latitude,
    double longitude,
  ) async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(
        latitude,
        longitude,
      );

      print('Placemark results:');
      print(placemarks);

      if (placemarks.isNotEmpty) {
        return "${placemarks.first.locality ?? "Unknown city"}, ${placemarks.first.country ?? "Unknown country"}";
      } else {
        return "Unknown city";
      }
    } catch (e) {
      return "Unknown city";
    }
  }

  /// Convenience method: get current city directly
  static Future<String> getCurrentCity() async {
    try {
      Position position = await getCurrentPosition();
      String city = await getCityNameAndCountry(
        position.latitude,
        position.longitude,
      );
      return city;
    } catch (e) {
      return "Unknown city";
    }
  }
}
