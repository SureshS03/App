import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Product(),
    );
  }
}

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    double x = MediaQuery.of(context).size.width;
    double y = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(color: Color(0xff9754CB)),
            height: y * 0.45,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'Hey Sarah',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Manrope',
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'What Would',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Manrope',
                            ),
                          ),
                          Text(
                            'You Want to',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Manrope',
                            ),
                          ),
                          Text(
                            'Search?',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Manrope',
                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: Image.asset('assets/images/man2.png'),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(x * 0.9, y * 0.046),
                    padding: const EdgeInsets.all(2.0),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(width: 10),
                      Image.asset('assets/images/sicon.png'),
                      const SizedBox(width: 20),
                      const Text(
                        'Search Products',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Manrope',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  Column(
                    children: [
                      _buildProductContainer(
                        image: 'assets/images/ban.png',
                        title: 'Indigenous Fruits',
                        productsCount: '18 Products',
                      ),
                      _buildProductContainer(
                        image: 'assets/images/pei.png',
                        title: 'Fruits',
                        productsCount: '18 Products',
                      ),
                      _buildProductContainer(
                        image: 'assets/images/ban.png',
                        title: 'Indigenous Fruits',
                        productsCount: '18 Products',
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      _buildProductContainer(
                        image: 'assets/images/bri.png',
                        title: 'Vegetables',
                        productsCount: '18 Products',
                      ),
                      _buildProductContainer(
                        image: 'assets/images/ban.png',
                        title: 'Indigenous Fruits',
                        productsCount: '18 Products',
                      ),
                      _buildProductContainer(
                        image: 'assets/images/dar.png',
                        title: 'Indigenous Fruits',
                        productsCount: '18 Products',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductContainer({required String image, required String title, required String productsCount}) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 233, 208, 245),
      ),
      child: Column(
        children: [
          Center(child: Image.asset(image)),
          Text(
            title,
            style: TextStyle(
              color: Color(0xff6237A0),
              fontSize: 14,
              fontWeight: FontWeight.w800,
              fontFamily: 'Manrope',
            ),
          ),
          Text(
            productsCount,
            style: TextStyle(
              color: Color(0xffA786D6),
              fontSize: 10,
              fontWeight: FontWeight.w800,
              fontFamily: 'Manrope',
            ),
          ),
        ],
      ),
    );
  }
}
