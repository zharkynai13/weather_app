import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeController extends GetxController {
  String city;
  String searchText;

  HomeController({required this.city, required this.searchText}) ;
  @override
  void onInit() {
    super.onInit();
  }

}