import 'package:flutter/material.dart';
import 'package:developing_my_self/lec_3/Login/Login_Screen.dart';
import 'package:developing_my_self/lec_3/lec_3_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // التحدي: اكتب الـ MaterialApp كاملة هنا
    // المطلوب: أخفِ شريط الـ debug، وحدد الـ home لتكون HomeScreen
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.routeName,
      routes: {
        LoginScreen.routeName: (context) => LoginScreen(),
        HomeScreen.routeName:(context)=>HomeScreen(),
      }
    );
  }
}
