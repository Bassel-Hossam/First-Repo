import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // ==================== الصف الأول: العناوين ====================
              Row(
                children: [
                  Expanded(
                    child: Container(
                      // 1. 🛠️ نقص في العناوين:
                      // النص ملتصق بالحواف.
                      // أضف خاصية padding هنا بقيمة 8 لجميع الجهات.
                      // padding: EdgeInsets.all(8),
                      // ______________________,

                      color: const Color.fromARGB(255, 240, 209, 75),
                      child: const Text(
                        "اذكر الله",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20), // كبرت الخط لك قليلاً
                      ),
                    ),
                  ),

                  const SizedBox(width: 4),

                  // العنوان الثاني
                  Expanded(
                    child: Container(
                      // 3. 🛠️ نفس التعديل: أضف padding هنا أيضاً.
                      // padding: EdgeInsets.all(8),
                      // ______________________,

                      color: const Color.fromARGB(255, 240, 209, 75),
                      child: const Text(
                        "اذكر الله",
                        // 4. 🛠️ نفس التعديل: اجعل النص في المنتصف.
                        textAlign: TextAlign.center,
                        // ______________________,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              // ==================== الصف الثاني: المنتجات (منطقة الإصلاح) ====================

              // ⚠️ خطأ هندسي قاتل في كودك السابق:
              // أنت وضعت Expanded حول الـ Row كله. هذا خطأ.
              // الـ Expanded يجب أن يكون "حول كل طفل" داخل الـ Row.

              Row(
                // ⬅️ (بداية الصف نظيفة بدون Expanded حولها)
                children: [
                  // --- المنتج الأول (يمين) ---

                  // 5. 🛠️ التحدي: أحط الـ Stack هذا بـ Expanded
                  // (اكتب كلمة Expanded وافتح قوس، وضع الـ Stack داخله كـ child)
                  // _____________________ (
                  //   child:
                  Expanded(
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Image.asset(
                          "assets/images/image.png", // ✅ تم إصلاح الاسم
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
                          child: const Text(
                            "سبحان الله",
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                  // ), // ⬅️ لا تنس إغلاق قوس الـ Expanded هنا

                  const SizedBox(width: 4),

                  // --- المنتج الثاني (يسار) ---

                  // 8. 🛠️ التحدي "العمياني":
                  // اكتب كود المنتج الثاني كاملاً هنا.
                  // الشروط:
                  // - لازم يكون جوه Expanded.
                  // - جواه Stack.
                  // - جواه Image و Container (نفس اللي فات بالظبط).
                  // - غير النص لـ "الحمد لله".

                  // ابدأ الكتابة هنا 👇
                  Expanded(
                    child: Stack(
                      children: [
                        Image.asset(
                          "assets/images/image.png",
                          fit: BoxFit.cover,
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          color: const Color.fromARGB(255, 31, 193, 214),
                          child: const Text(
                            "الحمد لله",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),

              const SizedBox(height: 4),

              // ==================== الصف الثالث: التكرار ====================

              // 9. 🛠️ التحدي الأخير:
              // انسخ الـ Row الخاص بالمنتجات (الصف الثاني بعد ما تصلحه)
              // وضعه هنا بالكامل لتكرار العملية.
              Row(
                // ⬅️ (بداية الصف نظيفة بدون Expanded حولها)
                children: [
                  // --- المنتج الأول (يمين) ---

                  // 5. 🛠️ التحدي: أحط الـ Stack هذا بـ Expanded
                  // (اكتب كلمة Expanded وافتح قوس، وضع الـ Stack داخله كـ child)
                  // _____________________ (
                  //   child:
                  Expanded(
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Image.asset(
                          "assets/images/image.png", // ✅ تم إصلاح الاسم
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
                          child: const Text(
                            "سبحان الله",
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                  // ), // ⬅️ لا تنس إغلاق قوس الـ Expanded هنا

                  const SizedBox(width: 4),

                  // --- المنتج الثاني (يسار) ---

                  // 8. 🛠️ التحدي "العمياني":
                  // اكتب كود المنتج الثاني كاملاً هنا.
                  // الشروط:
                  // - لازم يكون جوه Expanded.
                  // - جواه Stack.
                  // - جواه Image و Container (نفس اللي فات بالظبط).
                  // - غير النص لـ "الحمد لله".

                  // ابدأ الكتابة هنا 👇
                  Expanded(
                    child: Stack(
                      children: [
                        Image.asset("assets/images/image.png"),
                        Container(
                          margin: const EdgeInsets.all(10),
                          color: const Color.fromARGB(255, 31, 193, 214),
                          child: const Text(
                            "الحمد لله",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),

              const SizedBox(height: 4),
              Row(
                // ⬅️ (بداية الصف نظيفة بدون Expanded حولها)
                children: [
                  // --- المنتج الأول (يمين) ---

                  // 5. 🛠️ التحدي: أحط الـ Stack هذا بـ Expanded
                  // (اكتب كلمة Expanded وافتح قوس، وضع الـ Stack داخله كـ child)
                  // _____________________ (
                  //   child:
                  Expanded(
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Image.asset(
                          "assets/images/image.png", // ✅ تم إصلاح الاسم
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
                          child: const Text(
                            "سبحان الله",
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                  // ), // ⬅️ لا تنس إغلاق قوس الـ Expanded هنا

                  const SizedBox(width: 4),

                  // --- المنتج الثاني (يسار) ---

                  // 8. 🛠️ التحدي "العمياني":
                  // اكتب كود المنتج الثاني كاملاً هنا.
                  // الشروط:
                  // - لازم يكون جوه Expanded.
                  // - جواه Stack.
                  // - جواه Image و Container (نفس اللي فات بالظبط).
                  // - غير النص لـ "الحمد لله".

                  // ابدأ الكتابة هنا 👇
                  Expanded(
                    child: Stack(
                      children: [
                        Image.asset("assets/images/image.png"),
                        Container(
                          margin: const EdgeInsets.all(10),
                          color: const Color.fromARGB(255, 31, 193, 214),
                          child: const Text(
                            "الحمد لله",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),

              const SizedBox(height: 4),
              Row(
                // ⬅️ (بداية الصف نظيفة بدون Expanded حولها)
                children: [
                  // --- المنتج الأول (يمين) ---

                  // 5. 🛠️ التحدي: أحط الـ Stack هذا بـ Expanded
                  // (اكتب كلمة Expanded وافتح قوس، وضع الـ Stack داخله كـ child)
                  // _____________________ (
                  //   child:
                  Expanded(
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Image.asset(
                          "assets/images/image.png", // ✅ تم إصلاح الاسم
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
                          child: const Text(
                            "سبحان الله",
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                  // ), // ⬅️ لا تنس إغلاق قوس الـ Expanded هنا

                  const SizedBox(width: 4),

                  // --- المنتج الثاني (يسار) ---

                  // 8. 🛠️ التحدي "العمياني":
                  // اكتب كود المنتج الثاني كاملاً هنا.
                  // الشروط:
                  // - لازم يكون جوه Expanded.
                  // - جواه Stack.
                  // - جواه Image و Container (نفس اللي فات بالظبط).
                  // - غير النص لـ "الحمد لله".

                  // ابدأ الكتابة هنا 👇
                  Expanded(
                    child: Stack(
                      children: [
                        Image.asset("assets/images/image.png"),
                        Container(
                          margin: const EdgeInsets.all(10),
                          color: const Color.fromARGB(255, 31, 193, 214),
                          child: const Text(
                            "الحمد لله",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),

              const SizedBox(height: 4),

              Row(
                // ⬅️ (بداية الصف نظيفة بدون Expanded حولها)
                children: [
                  // --- المنتج الأول (يمين) ---

                  // 5. 🛠️ التحدي: أحط الـ Stack هذا بـ Expanded
                  // (اكتب كلمة Expanded وافتح قوس، وضع الـ Stack داخله كـ child)
                  // _____________________ (
                  //   child:
                  Expanded(
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Image.asset(
                          "assets/images/image.png", // ✅ تم إصلاح الاسم
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
                          child: const Text(
                            "سبحان الله",
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                  // ), // ⬅️ لا تنس إغلاق قوس الـ Expanded هنا

                  const SizedBox(width: 4),

                  // --- المنتج الثاني (يسار) ---

                  // 8. 🛠️ التحدي "العمياني":
                  // اكتب كود المنتج الثاني كاملاً هنا.
                  // الشروط:
                  // - لازم يكون جوه Expanded.
                  // - جواه Stack.
                  // - جواه Image و Container (نفس اللي فات بالظبط).
                  // - غير النص لـ "الحمد لله".

                  // ابدأ الكتابة هنا 👇
                  Expanded(
                    child: Stack(
                      children: [
                        Image.asset("assets/images/image.png"),
                        Container(
                          margin: const EdgeInsets.all(10),
                          color: const Color.fromARGB(255, 31, 193, 214),
                          child: const Text(
                            "الحمد لله",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),

              const SizedBox(height: 4),
            ],
          ),
        ),
      ),
    );
  }
}
