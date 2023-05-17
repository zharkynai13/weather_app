import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:weather_app/models/current_weather_data.dart';
import 'package:weather_app/service/weather_service.dart';

class HomeController extends GetxController {
  String city;
  String searchText;
  // CurrentWeatherData currentWeatherData = CurrentWeatherData(coord: coord,
  //  weather: weather,
  //  base: base, 
  //  main: main, 
  //  visibility: visibility, 
  //  wind: wind, 
  //  clouds: clouds, 
  //  dt: dt, 
  //  sys: sys, 
  //  timezone: timezone, 
  //  id: id, 
  //  name: name, 
  //  cod: cod);
  HomeController({required this.city, required this.searchText}) ;
  
  // static get weather => null;
  
  // static get base => null;
  
  // static get main => null;
  
  // static get visibility => null;
  
  // static get wind => null;
  
  // static get clouds => null;
  
  // static get dt => null;
  
  // static get sys => null;
  
  // static get timezone => null;
  
  // static get id => null;
  
  // static get name => null;
  
  // static get cod => null;
  
  // static get coord => null;

  @override
  void onInit() {
    initState();
    super.onInit();
  }

  void initState() {
    WeatherService(city: '$city').getCurrentWeatherData(
      onSuccess: (data) {
        //  currentWeatherData = data;
         update();

      }, onError: (error) {  }
     
    );

  }

}