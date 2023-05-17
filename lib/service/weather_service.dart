import 'package:weather_app/api/api.dart';
import 'package:weather_app/models/current_weather_data.dart';

class WeatherService {
  final String city;
  final payload = {
  'key1': '9d48ca0f0ec99ebd94d30163f03012be',
  'key2': '986d226c46566419492889993299ae5f',
};
  
  String baseUrl = 'https://api.openweathermap.org/data/2.5/';
  String apiKey = 'zhkau.api';
  WeatherService({required this.city});
  

  void getCurrentWeatherData({
  Function()? beforeSend,
   Function(CurrentWeatherData currentWeatherData)? onSuccess,
   Function(dynamic error)? onError,

}){
  final url = '$baseUrl/weather?q=city&lang==en&$apiKey';
  ApiRepository(url: '$url', payload: payload).get (
    beforeSend: () => {
      if(beforeSend != null) {
        beforeSend()
      }
    },
    onSuccess: (data) => {
      onSuccess! (CurrentWeatherData.fromJson(data))
    },
    onError: (error) => {
      if(onError != null) {
        print(error),
        onError(error)

      }
    },
  );
}
 void getTopFiveCities({
  Function()? beforeSend,
 Function(dynamic currentWeatherData)? onSuccess,
Function(dynamic error)? onError

}) {}
void getFiveDaysThreeHoursForecastData({
  Function()? beforeSend,
  required Function(dynamic currentWeatherData) onSuccess,
  required Function(dynamic error) onError,
}) {} 
}