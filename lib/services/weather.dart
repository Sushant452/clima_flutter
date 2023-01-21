import 'package:clima_flutter/services/networking.dart';
// import 'package:clima_flutter/services/location.dart';

const apiKey = '2294c8a21f14fc4057b1fffc2b5a8098';
const openWeatherMapURL = 'https://api.openweathermap.org/data/2.5/weather';

class WeatherModel {
  Future<dynamic> getCityWeather(String cityName) async {
    var url = '$openWeatherMapURL?q=$cityName&appid=$apiKey&units=metric';
    NetworkHelper networkHelper = NetworkHelper(url: url);

    var weatherData = await networkHelper.getWeatherData();
    return weatherData;
  }

  Future<dynamic> getLocationWeather() async {
    // Location location = Location();
    // await location.getCurrentLocation();
    // double latitude = location.latitude;
    // double longitude = location.longitude;
    NetworkHelper networkHelper = NetworkHelper(
        url:
            '$openWeatherMapURL?lat=44.34&lon=10.99&appid=$apiKey&units=metric');
    var weatherData = await networkHelper.getWeatherData();
    return weatherData;
  }

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
}
