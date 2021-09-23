import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:revsion/View/Screens/CategoryScreen.dart';
import 'package:revsion/View/Screens/Home.dart';
import 'package:revsion/View/Screens/SeachScreen.dart';
import 'package:revsion/View/Screens/SplashScreen.dart';

void main()
{
  runApp(SmartCode());
}
class SmartCode extends StatefulWidget {
  @override
  _SmartCodeState createState() => _SmartCodeState();
}

class _SmartCodeState extends State<SmartCode> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder:()=> MaterialApp(
        debugShowCheckedModeBanner: false,
initialRoute: SplachScreen.id,        routes: {
          SplachScreen.id:(context)=>SplachScreen(),
          HomeScreen.id:(context)=>HomeScreen(),
        CategoryScreen.id:(context)=>CategoryScreen(),
        SearchScreen.id:(context)=>SearchScreen(),
        },
      ),
    );
  }
}
