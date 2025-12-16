import 'package:developing_my_self/lec_3/model/card_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardItem extends StatelessWidget {
  CardModel cardmodel;
  CardItem({required this.cardmodel, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        Image.asset(
          "assets/images/${cardmodel.image}", // ✅ تم إصلاح الاسم
          fit: BoxFit.cover,
        ),

        // النص فوق الصورة
        Container(
          // 6. 🛠️ التحدي: النص ملتصق بالحافة
          // أضف margin من الأعلى (top: 10) واليسار (left: 10)
          margin: const EdgeInsets.all(10),

          // 7. 🛠️ جماليات: أضف padding داخلية للنص (مثلاً 8)
          // _________________________________________,

          color: const Color.fromARGB(255, 31, 193, 214),
          child: Text(
            cardmodel.title,
            style: const TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}
