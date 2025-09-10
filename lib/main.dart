import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // header
          Container(
            color: Colors.green,
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  color: Colors.grey,
                  height: 59,
                )),
                SizedBox(
                  width: 43,
                  height: 43,
                  child: Stack(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        child: Icon(Icons.person),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60 / 2),
                          color: Colors.white,
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35 / 2),
                            color: Colors.red,
                          ),
                          clipBehavior: Clip.hardEdge,
                          child: Icon(
                            Icons.message,
                            color: Colors.white,
                            size: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //end header

          //card gopay
          Container(
            height: 105,
            margin: EdgeInsets.all(29),
            decoration: BoxDecoration(
                color: Color(0xFF0281A0),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                // BAGIAN SATU DARI CARD GOPAY
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 2,
                        height: 8,
                        decoration: BoxDecoration(
                            color: const Color(0xFFBBBBBB),
                            borderRadius: BorderRadius.circular(1)),
                      ),
                      const SizedBox(height: 4),
                      Container(
                        width: 2,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(1),
                        ),
                      ),
                    ],
                  ),
                ),
                // END BAGIAN SATU CARD GOPAY

                // BAGIAN 2 DARI CARD GOPAY
                Column(
                  children: [
                    Container(
                      height: 11,
                      width: 118,
                      decoration: const BoxDecoration(
                        color: Color(0xFF9CCDDB),
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(8)
                        ),
                      ),
                    ),
                    Container(
                      height: 78,
                      width: 127,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                      ),
                    )
                  ],
                )
                // END BAGIAN DUA DARI CARD GOPAY
              ],
            ),
          ),
          // end card gopay
        ],
      ),
    );
  }
}
