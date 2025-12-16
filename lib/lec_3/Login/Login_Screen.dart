import 'package:developing_my_self/lec_3/lec_3_home.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
static const String routeName='Login_Screen';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("أجعل لسانك رطبا من ذكر الله",style: TextStyle(color: Colors.white,fontSize:25 ,fontWeight: FontWeight.bold)),
        centerTitle: true
        ,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          // الصفحة التالية                الصفحة الحالية
          Navigator.of(context).pushNamed(HomeScreen.routeName);
          //          Navigator.pushReplacementNamed(context, HomeScreen.routeName); لكي ننتقل لصفحة جديده ولا نرجع الى القديمه  sign up اول مرة في الفيسبوك
        }, child: const Text("أذكر الله",style: const TextStyle(color:Colors.white)),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          textStyle: const TextStyle(color:Colors.white) ,
        )

        ),

      ),

    );
  }
}
