import 'dart:async';
import 'package:flutter/material.dart';
import 'package:revsion/View/Screens/Home.dart';
import 'package:shimmer/shimmer.dart';
class SplachScreen extends StatefulWidget {
  static String id="Splach";

  @override
  _SplachScreenState createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  @override
 initState()
  {
    super.initState();
    Timer(Duration(seconds: 3), ()
    {
      Navigator.popAndPushNamed(context, HomeScreen.id);
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Image.asset("Images/photo_2021-09-20_15-43-33.png"),

      ),
    );
  }
}
