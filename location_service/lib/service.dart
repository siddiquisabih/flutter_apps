import 'package:geolocator/geolocator.dart';

class LatLngService {
  double latitude = double.nan;
  double longitude = double.nan;
  double accuracy = double.nan;
  // final double longitude;

  Future<void> getCurrentLocation() async {
    try {
     LocationPermission permission=  await Geolocator.requestPermission();
print(permission);
     
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      latitude = position.latitude;
      longitude = position.longitude;
      accuracy = position.accuracy;
    } catch (e) {
      //
    }
  }
}
