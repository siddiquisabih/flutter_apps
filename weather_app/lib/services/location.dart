import 'package:geolocator/geolocator.dart';

class LocationServices {
  double latitude = double.nan;
  double longitude = double.nan;
  // final double longitude;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }
}
 