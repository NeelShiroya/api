import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screen/home_page.dart';
//hello small c hange @Dixit Rangpariya
void main(){
  runApp(MyApp() );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: HomePage(),);
  }
}
