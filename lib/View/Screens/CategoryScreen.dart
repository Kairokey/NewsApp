import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:revsion/Models/Category.dart';
class CategoryScreen extends StatelessWidget {
 static String id="CategoryScreen";
 String? cname;
 CategoryScreen({this.cname});
 List<CategoryModel>Images=[
   CategoryModel(image: 'https://scontent.fcai21-2.fna.fbcdn.net/v/t1.6435-9/241055819_10159308849845642_4213700611861108686_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=973b4a&_nc_ohc=fRVoSN0Znb0AX-2kSKP&_nc_ht=scontent.fcai21-2.fna&oh=a904283c0ae2f379b9c7100340f42f56&oe=61705054'),
   CategoryModel(image: 'https://scontent.fcai21-1.fna.fbcdn.net/v/t1.6435-9/242189631_10159340641585642_6678937632966849807_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=973b4a&_nc_ohc=2zmiv5snd_oAX941EWV&_nc_ht=scontent.fcai21-1.fna&oh=ad42fa1aad238146b9d9b128223285b4&oe=617065A6'),
   CategoryModel(image: 'https://scontent.fcai21-2.fna.fbcdn.net/v/t1.6435-9/242355649_10159349036375642_5107517324215236288_n.jpg?_nc_cat=1&ccb=1-5&_nc_sid=973b4a&_nc_ohc=X4zS35RF13MAX-dlMLW&_nc_ht=scontent.fcai21-2.fna&oh=a44a7fad86eb9f8aa00457976f621afc&oe=617069D0'),
   CategoryModel(image: 'data:image/jpeg;base64,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')

 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("SmartCode",style: TextStyle(fontSize: 30.sp,color: Colors.purpleAccent,fontWeight: FontWeight.bold),),
            Text("  News",style: TextStyle(fontSize: 20.sp,color: Colors.grey[300],fontWeight: FontWeight.bold),),
          ],
        ),
      ),
        body: Column(
          children: [
            Align(alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(cname!,style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
                )),
            Container(
              height:1.sw,
              child: ListView.builder(
                itemCount: Images.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200.h,
                    width: 9.sw,
                    child: Image.network(Images[index].image!,fit: BoxFit.cover,),
                  ),
                );
              }),
            )
          ],
        ),

    );
  }
}
