import '../services/networking.dart';
import '../services/location.dart';

const apiKey = '10aaf9d4d6f9e3e5fb4082fdd1bffcb3';
const openWeatherMapURL = 'https://api.openweathermap.org/data/2.5/weather?';

class WeatherModel {
  Future<dynamic> getCityWeather(String cityName) async {
    var url = Uri.parse('${openWeatherMapURL}q=${cityName}&appid=${apiKey}');
    HttpHelper httpHelper = HttpHelper(url);
    var data = await httpHelper.getData();
    return data;
  }

  Future<dynamic> getLocationWeather() async {
    Location location = Location();
    var position = await location.getLocation();
    var url = Uri.parse(
        '${openWeatherMapURL}lat=${position.latitude}&lon=${position.longitude}&appid=$apiKey');
    HttpHelper httpHelper = HttpHelper(url);
    var data = await httpHelper.getData();
    return data;
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
