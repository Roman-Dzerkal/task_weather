import 'package:task_weather/repositories/weather_repository/interface_weather_repository.dart';
import 'package:task_weather/services/weather_service.dart';

class WeatherRepository extends IWeatherRepository {
  final WeatherService weatherService;

  WeatherRepository({required this.weatherService});
}
