import 'package:flutter/material.dart';

// استخدام StatelessWidget يعني أن هذه الشاشة ثابتة ولا تتغير
class CounterScreen extends StatefulWidget {
   const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  int Counter=0;
  Widget build(BuildContext context) {
    // build هي الدالة التي ترسم كل شيء على الشاشة
    return Scaffold(
      // Scaffold هو الهيكل الأساسي للصفحة (مثل الحوائط والأرضية)
      appBar: AppBar(
        // AppBar هو الشريط الأزرق العلوي
        title: const Text('Counter Screen (Stateless)'), // عنوان الشاشة
      ),
      body: Center(
        // Center يقوم بوضع كل ما بداخله في منتصف الشاشة
        child: Text(
          "$Counter",
          style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          Counter++;
        });
      },
      child: const Icon(Icons.add),),
    );
  }
}
