import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // 1. تعريف المتغير للـ Slider
  double sliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50, // ارتفاع مناسب للـ AppBar
        leading: const Icon(Icons.arrow_back),
        leadingWidth: 50,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: SingleChildScrollView(
        // يسمح بالتمرير (Scrolling) لتجنب الأخطاء في الشاشات الصغيرة
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // 1. الصورة
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // تأكد أن الصورة موجودة في مجلد assets/images وتم تعريفها في pubspec.yaml
                Image.asset("assets/images/image9.png"),
              ],
            ),

            // 2. باقي المحتوى
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  // أ. العنوان
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Cheeseburger Wendy's Burger",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),

                  // ب. التقييم والوقت
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                      ),
                      Text("4.9 - 26 mins", style: TextStyle(fontSize: 15)),
                    ],
                  ),

                  const SizedBox(height: 15),

                  // ج. الوصف
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Text(
                          "The Cheeseburger Wendy's Burger is a classic fast food burger that packs a punch of flavor in every bite. Made with a juicy beef patty cooked to perfection, it's topped with melted American cheese, crispy lettuce, ripe tomato, and crunchy pickles. Wendy's Burger",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 15),

                  // د. قسم الـ Spicy (Slider)///////////////////////////////////////
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Spicy",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Slider(
                              value: sliderValue,
                              min: 0,
                              max: 100,
                              activeColor: Colors.red,
                              onChanged: (newValue) {
                                setState(() {
                                  sliderValue = newValue;
                                });
                              },
                            ),
                            const Row(
                              children: [
                                Text(
                                  "Mild",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 42, 177, 112)),
                                ),
                                SizedBox(
                                  width: 100,
                                ),
                                Text(
                                  "Hot",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 243, 60, 15)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      // const SizedBox(
                      //   width: 0,
                      // ),
                      // هـ. قسم الـ Portion (العداد)///////////////////////////////////////////////
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              "Portion",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                // زر الناقص
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.red,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusGeometry.circular(20)),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1),
                                  ),
                                  child: const Icon(Icons.remove,
                                      color: Colors.white, size: 20),
                                ),

                                const SizedBox(width: 10),
                                const Text("2",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                const SizedBox(width: 15),

                                // زر الزائد
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.red,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusGeometry.circular(20)),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1),
                                  ),
                                  child: const Icon(Icons.add,
                                      color: Colors.white, size: 20),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  // مسافة إضافية في الأسفل لتجميل الشكل
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(15)),
                          //لعرض علامة الدولار حط قبلها باك سلاش
                          child: const Text(
                            "\$8.24",
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          )),
                      Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 20),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 80, 61, 60),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Text(
                            "ORDER NOW",
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
