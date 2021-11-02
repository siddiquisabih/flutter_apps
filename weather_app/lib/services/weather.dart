import 'package:weather_app/services/location.dart';
import 'package:weather_app/services/networking.dart';

const apiKey = "b8d15b81f774b5ccd27cfe7f75303193";
const API = "https://api.openweathermap.org/data/2.5/weather";

class WeatherModel {
  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }

  Future<dynamic> getLocationWeather() async {
    LocationServices location = LocationServices();

    await location.getCurrentLocation();
    var url =
        '$API?lat=${location.longitude}&lon=${location.latitude}&apikey=$apiKey&units=metric';

    NetworkServices helper = NetworkServices(uri: url);

    var weatherData = await helper.getData();

    return weatherData;
  }
}
