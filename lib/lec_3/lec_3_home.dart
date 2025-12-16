import 'package:developing_my_self/lec_3/card_item.dart';
import 'package:developing_my_self/lec_3/model/card_model.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  static const String routeName='home_screen';
  HomeScreen({super.key})
  //call the func inside the constructor
  {
    createDumyData();
  }

  List<CardModel> cards = [];
  void createDumyData() {
    for (int i = 1; i <= 50; i++) {
      cards.add(CardModel(image: "image2.png", title: "سبحان الله  $i"));
    }
  }

  List<Widget> convertToWidget() {
    //اللي تحت دي function تحوي جواها باراميتير (الموديل) الا وهو نفس نوع الموديل بتاع الcards  عشان كده تحت هنعمل assign --> (cardmodel,loop:model)
    return cards.map((model) {
      //دي الويدجيت اللي احننا عايزين نحول ليها
      return CardItem(cardmodel: model);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:
      SafeArea(
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: const Text("رجوع",style: const TextStyle(color:Colors.white)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  textStyle: const TextStyle(color:Colors.white) ,
                )

            ),
            Expanded(
              child: ListView.separated(
                itemCount: cards.length,
                //arrow func: when directly return widget
                separatorBuilder: (context, index) => const SizedBox(
                  height: 20,
                ),
                //anonymous func: when you make any logic before return widget
                itemBuilder: (context, index) {
                  return CardItem(cardmodel: cards[index]);
                },
                // cards.map((e) {
                //   return CardItem(cardmodel: e);
                // }).toList(),

                // ==================== الصف الأول: العناوين ====================
                // Row(
                //   children: [
                //     Expanded(
                //       child: Container(
                //         // 1. 🛠️ نقص في العناوين:
                //         // النص ملتصق بالحواف.
                //         // أضف خاصية padding هنا بقيمة 8 لجميع الجهات.
                //         // padding: EdgeInsets.all(8),
                //         // ______________________,

                //         color: const Color.fromARGB(255, 240, 209, 75),
                //         child: const Text(
                //           "اذكر الله",
                //           textAlign: TextAlign.center,
                //           style: TextStyle(
                //               color: Colors.white,
                //               fontSize: 20), // كبرت الخط لك قليلاً
                //         ),
                //       ),
                //     ),

                //     const SizedBox(width: 4),

                //     // العنوان الثاني
                //     Expanded(
                //       child: Container(
                //         // 3. 🛠️ نفس التعديل: أضف padding هنا أيضاً.
                //         // padding: EdgeInsets.all(8),
                //         // ______________________,

                //         color: const Color.fromARGB(255, 240, 209, 75),
                //         child: const Text(
                //           "اذكر الله",
                //           // 4. 🛠️ نفس التعديل: اجعل النص في المنتصف.
                //           textAlign: TextAlign.center,
                //           // ______________________,
                //           style: TextStyle(color: Colors.white, fontSize: 20),
                //         ),
                //       ),
                //     ),
                //   ],
                // ),

                // const SizedBox(height: 10),

                //               // ==================== الصف الثاني: المنتجات (منطقة الإصلاح) ====================
                //               // ⚠️ خطأ هندسي قاتل في كودك السابق:
                //               // أنت وضعت Expanded حول الـ Row كله. هذا خطأ.
                //               // الـ Expanded يجب أن يكون "حول كل طفل" داخل الـ Row.

                //               // ==================== الصف الثالث: التكرار ====================

                //               // 9. 🛠️ التحدي الأخير:
                //               // انسخ الـ Row الخاص بالمنتجات (الصف الثاني بعد ما تصلحه)
                //               // وضعه هنا بالكامل لتكرار العملية.
                //               CardItem(
                //                   cardmodel:
                //                       CardModel(image: "image.png", title: "سبحان الله")),

                //               const SizedBox(width: 4),
                // //Class -  Object  -  Constructor
                //               CardItem(
                //                   cardmodel:
                //                       CardModel(image: "image.png", title: "سبحان الله")),
                //               // --- المنتج الثاني (يسار) ---

                //               // 8. 🛠️ التحدي "العمياني":
                //               // اكتب كود المنتج الثاني كاملاً هنا.
                //               // الشروط:
                //               // - لازم يكون جوه Expanded.
                //               // - جواه Stack.
                //               // - جواه Image و Container (نفس اللي فات بالظبط).
                //               // - غير النص لـ "الحمد لله".

                //               // ابدأ الكتابة هنا 👇
                //               const SizedBox(height: 4),

                //               CardItem(
                //                   cardmodel:
                //                       CardModel(image: "image.png", title: "سبحان الله")),

                //               const SizedBox(height: 4),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
