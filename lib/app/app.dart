import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/view/homa_page.dart';
import 'package:weather_app/view/home_binding.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      getPages: [
        GetPage(name: "/",
         page: ()=> MyHomePage(),
         binding: HomeBinding())
      ],
  

    );
  }
}