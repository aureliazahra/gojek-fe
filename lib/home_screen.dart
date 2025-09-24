import 'package:flutter/material.dart';
import 'package:nggojeg/menu_lainnya.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // ✅ dipindah ke dalam Scaffold
      child: Column(
        children: [
          // header
          Container(
            color: Colors.green,
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        size: 20,
                        color: Colors.grey,
                      ),
                      hintText: 'Find services, food, or places',
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 43,
                  height: 43,
                  child: Stack(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        alignment: Alignment.center, // ✅ icon biar di tengah
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60 / 2),
                          color: Colors.white,
                        ),
                        child: const Icon(Icons.person),
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
                          child: const Icon(
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
            margin: const EdgeInsets.all(29),
            decoration: BoxDecoration(
              color: const Color(0xFF0281A0),
              borderRadius: BorderRadius.circular(15),
            ),
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
                          borderRadius: BorderRadius.circular(1),
                        ),
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
                        borderRadius:
                            BorderRadius.vertical(bottom: Radius.circular(8)),
                      ),
                    ),
                    const SizedBox(height: 6),
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/gopay.png', height: 14),
                          const SizedBox(height: 4),
                          FittedBox(
                            // ✅ biar ga overflow
                            child: Text(
                              'Rp.12.000.000',
                              style: const TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          const Text(
                            'Tap for history',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 10,
                              color: Color(0xFF097210),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                // END BAGIAN DUA DARI CARD GOPAY

                const SizedBox(width: 20),
                // BAGIAN 3 DARI CARD GOPAY
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 27,
                            height: 27,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Image.asset('assets/images/pay.png'),
                          ),
                          const Text(
                            "Pay",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 27,
                            height: 27,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Image.asset('assets/images/topup.png'),
                          ),
                          const Text(
                            "Top Up",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 27,
                            height: 27,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Image.asset('assets/images/explore.png'),
                          ),
                          const Text(
                            "Explore",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                // END BAGIAN 3 DARI CARD GOPAY
              ],
            ),
          ),
          // end card gopay

          //menu layanan gojek
          SizedBox(
            child: GridView.count(
              crossAxisCount: 4,
              mainAxisSpacing: 4,
              crossAxisSpacing: 1,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                Column(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      child: Image.asset(
                        "assets/images/goride.png",
                        width: 50,
                      ),
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    Text(
                      'GoRIde',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      child: Image.asset(
                        "assets/images/gocar.png",
                        width: 50,
                      ),
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    Text(
                      'GoCar',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      child: Image.asset(
                        "assets/images/gofood.png",
                        width: 50,
                      ),
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    Text(
                      'GoFood',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      child: Image.asset(
                        "assets/images/gosend.png",
                        width: 50,
                      ),
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    Text(
                      'GoSend',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      child: Image.asset(
                        "assets/images/gomart.png",
                        width: 50,
                      ),
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    Text(
                      'GoMart',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      child: Image.asset(
                        "assets/images/gotagihan.png",
                        width: 50,
                      ),
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    Text(
                      'GoPulsa',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      child: Image.asset(
                        "assets/images/gotix2.png",
                        width: 50,
                      ),
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    Text(
                      'GoClub',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MenuLainnyaWidget(),
                      )),
                  child: Column(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        child: Image.asset(
                          "assets/images/more.png",
                          width: 50,
                        ),
                      ),
                      const SizedBox(
                        height: 9,
                      ),
                      Text(
                        'More',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // end menu layanan gojek

          // lainnya
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/images/ads.png", width: double.infinity),
                const SizedBox(height: 20),
                const Text(
                  "Discover all the good eats on GoFood", // ✅ typo "goof" → "good"
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 2),
                Image.asset("assets/images/ads2.png", width: double.infinity),
              ],
            ),
          ),
          //end lainnya
        ],
      ),
    );
  }
}
