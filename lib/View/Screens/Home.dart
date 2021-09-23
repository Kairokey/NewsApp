//import 'package:country_code_picker/country_code_picker.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:revsion/Models/Category.dart';
import 'package:revsion/View/Screens/CategoryScreen.dart';
import 'package:revsion/View/Screens/SeachScreen.dart';
class HomeScreen extends StatelessWidget {
  static String id="Home";
  List<CategoryModel>categories=
  [
    CategoryModel(title: 'General',),
    CategoryModel(title: 'Business'),
    CategoryModel(title: 'Sports'),
    CategoryModel(title: 'Entertainment'),
    CategoryModel(title: 'Health'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: InkWell(onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchScreen()));
      },
        child: FloatingActionButton(
          backgroundColor: Colors.deepPurple,
          child: Icon(Icons.search),
          onPressed: (){},
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("SmartCode",style: TextStyle(fontSize: 30.sp,color: Colors.purpleAccent,fontWeight: FontWeight.bold),),
            Text("  News",style: TextStyle(fontSize: 20.sp,color: Colors.grey[300],fontWeight: FontWeight.bold),),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: Size(1.sw, 50.h),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CountryCodePicker(
                  initialSelection: "Eg",
                  showOnlyCountryWhenClosed: true,
                ),
              ],
            ),
          ),
        ),
    ),
      body:
      Column(
        children: [
              Container(
                height: 200.h,
                width:1.sw,
                child: ListView.builder(
                  itemCount: categories.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index)
                {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryScreen(cname: categories[index].title!,)));
                      },
                      child: Container(
                        width: .6.sw,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSg67aM9EXHJ4Idpmu_RH_7zw_MPFUhGJUjHw&usqp=CAU'),fit: BoxFit.cover
                          ),
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10.r)
                        ),
                        child: Center(child: Text(categories[index].title!,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),)),
                      ),
                    ),
                  );
                }),
              ),
          Container(


            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemBuilder: (context,index){
                  return Expanded(
                    child: Container(
                      height: .5.sh,
                      width: 1.sw,
                      color: Colors.red,

                    ),
                  );

            }),
          )
        ],

      ),

    );
  }
}
