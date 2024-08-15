import 'package:flutter/material.dart';
import 'package:flutter_application_5/tableau.dart';
import 'package:get/get.dart';
void main(){
  runApp(const MainApp());
}
class MainApp extends StatelessWidget {
  const  MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
     navigatorKey: Get.key,
      debugShowCheckedModeBanner: false,
      home:Tableau() 
    );
  }
}
  
