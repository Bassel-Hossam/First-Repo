import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text("السلام عليكم"),
        leading: Icon(Icons.phone),
        actions: [Icon(Icons.video_call)],
      ),
    );
  }
}
