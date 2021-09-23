import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SearchScreen extends StatelessWidget {
 static String id="Search";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 60.h,
                width: 500.w,
                child: TextField(style:TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(Icons.search,size: 35.h,),
                    ),
                    labelText: 'Search',
                    labelStyle: TextStyle(
                      fontSize: 15,fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                    focusedBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(50)
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}
