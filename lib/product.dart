import 'package:flutter/material.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';

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
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Color(0xff9754CB)
              ),
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
                        fontFamily: 'Manrope'
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
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
                        fontFamily: 'Manrope'
                      ),
                          ),
                          Text('You Want to',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Manrope'
                      ),),
                          Text('Search?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Manrope'
                      ),)
                        ],
                      ),
                      Container(
                        //padding: EdgeInsets.only(right: 35),
                        //margin: EdgeInsets.only(right: 20),
                        child: Image.asset('assets/images/man2.png'),
                      )                  
                    ],),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const ProductCard()));
                    },
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
                child: 
            Stack(
              
              children: [
                
                Positioned(
                  left: 25,
                  child: Column(
                    children: [
                      Container(
                        width: 140,
                        height: 180,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 233, 208, 245),
                        ),
                        child: Column(
                          children: [
                            Center(
                              child: Image.asset('assets/images/ban.png'),
                            ),
                            Text(
                              'Indigenous Fruits',
                              style: TextStyle(
                                color: Color(0xff6237A0),
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Manrope'
                              ),
                            ),
                            Text(
                              '18 Products',
                              style: TextStyle(
                                color: Color(0xffA786D6),
                                fontSize: 10,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Manrope'
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(2),
                        width: 140,
                        height: 180,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 233, 208, 245),
                        ),
                        child: Column(
                          children: [
                            Center(
                              child: Image.asset('assets/images/pei.png'),
                            ),
                            Text(
                              'Fruits',
                              style: TextStyle(
                                color: Color(0xff6237A0),
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Manrope'
                              ),
                            ),
                            Text(
                              '18 Products',
                              style: TextStyle(
                                color: Color(0xffA786D6),
                                fontSize: 10,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Manrope'
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 140,
                        height: 180,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 233, 208, 245),
                        ),
                        child: Column(
                          children: [
                            Center(
                              child: Image.asset('assets/images/ban.png'),
                            ),
                            Text(
                              'Indigenous Fruits',
                              style: TextStyle(
                                color: Color(0xff6237A0),
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Manrope'
                              ),
                            ),
                            Text(
                              '18 Products',
                              style: TextStyle(
                                color: Color(0xffA786D6),
                                fontSize: 10,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Manrope'
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(child:
                Column(
                  children: [
                    Container(
                      width: 140,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 233, 208, 245),
                      ),
                      child: Column(
                        children: [
                          Center(
                            child: Image.asset('assets/images/bri.png'),
                          ),
                          Text(
                            'Vegetables',
                            style: TextStyle(
                              color: Color(0xff6237A0),
                              fontSize: 14,
                              fontWeight: FontWeight.w800,
                              fontFamily: 'Manrope'
                            ),
                          ),
                          Text(
                            '18 Products',
                            style: TextStyle(
                              color: Color(0xffA786D6),
                              fontSize: 10,
                              fontWeight: FontWeight.w800,
                              fontFamily: 'Manrope'
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 140,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 233, 208, 245),
                      ),
                      child: Column(
                        children: [
                          Center(
                            child: Image.asset('assets/images/ban.png'),
                          ),
                          Text(
                            'Indigenous Fruits',
                            style: TextStyle(
                              color: Color(0xff6237A0),
                              fontSize: 14,
                              fontWeight: FontWeight.w800,
                              fontFamily: 'Manrope'
                            ),
                          ),
                          Text(
                            '18 Products',
                            style: TextStyle(
                              color: Color(0xffA786D6),
                              fontSize: 10,
                              fontWeight: FontWeight.w800,
                              fontFamily: 'Manrope'
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 140,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 233, 208, 245),
                      ),
                      child: Column(
                        children: [
                          Center(
                            child: Image.asset('assets/images/dar.png'),
                          ),
                          Text(
                            'Indigenous Fruits',
                            style: TextStyle(
                              color: Color(0xff6237A0),
                              fontSize: 14,
                              fontWeight: FontWeight.w800,
                              fontFamily: 'Manrope'
                            ),
                          ),
                          Text(
                            '18 Products',
                            style: TextStyle(
                              color: Color(0xffA786D6),
                              fontSize: 10,
                              fontWeight: FontWeight.w800,
                              fontFamily: 'Manrope'
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
                )
              ],
            )
              )
            )

          ],
        ),
      )
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});
  @override
  Widget build(BuildContext context) {
    final double x = MediaQuery.of(context).size.width;
    final double y = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              decoration: BoxDecoration(
                color: Color(0xff9754CB)
              ),
              height: y * 0.15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: BackButton(
                          onPressed: () => Navigator.pop(context),
                          color: Colors.black,
                          style: ButtonStyle(),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(x * 0.75, y * 0.046),
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
                  SizedBox(height: 20,),
                  Container(
                    
                    child: Text('150 Products in Indegenous Fruits',style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Manrope'
                    ),),
                  )
                ],
              ),
            ),
            Expanded(
              child:
            SingleChildScrollView(
              
              padding: EdgeInsets.all(20),
              scrollDirection: Axis.vertical,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      
                      Container(
                        padding: EdgeInsets.all(2),
                        width: 140,
                        height: 135,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 233, 208, 245),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () => {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Description()))
                                },
                                child: Center(
                                  child: Image.asset('assets/images/ban.png'),
                                ),
                              ),
                            ),
                            Text(
                              'Indigenous Fruits',
                              style: TextStyle(
                                color: Color(0xff6237A0),
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Manrope'
                              ),
                            ),
                            Text(
                              '18 Products',
                              style: TextStyle(
                                color: Color(0xffA786D6),
                                fontSize: 10,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Manrope'
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        padding: EdgeInsets.all(2),
                        width: 140,
                        height: 135,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 233, 208, 245),
                        ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Center(
                            child: Image.asset(
                              'assets/images/pei.png',
                              fit: BoxFit.contain, 
                            ),
                          ),
                        ),
                        Text(
                          'Fruits',
                          style: TextStyle(
                            color: Color(0xff6237A0),
                            fontSize: 14,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'Manrope',
                          ),
                        ),
                        Text(
                          '18 Products',
                          style: TextStyle(
                            color: Color(0xffA786D6),
                            fontSize: 10,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'Manrope',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                        padding: EdgeInsets.all(2),
                        width: 140,
                        height: 135,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 233, 208, 245),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Center(
                                child: Image.asset('assets/images/bri.png'),
                              ),
                            ),
                            Text(
                              'Vegitables',
                              style: TextStyle(
                                color: Color(0xff6237A0),
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Manrope'
                              ),
                            ),
                            Text(
                              '18 Products',
                              style: TextStyle(
                                color: Color(0xffA786D6),
                                fontSize: 10,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Manrope'
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        padding: EdgeInsets.all(2),
                        width: 140,
                        height: 135,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 233, 208, 245),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Center(
                                child: Image.asset('assets/images/dar.png'),
                              ),
                            ),
                            Text(
                              'Exogenous Fruits',
                              style: TextStyle(
                                color: Color(0xff6237A0),
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Manrope'
                              ),
                            ),
                            Text(
                              '18 Products',
                              style: TextStyle(
                                color: Color(0xffA786D6),
                                fontSize: 10,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Manrope'
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        padding: EdgeInsets.all(2),
                        width: 140,
                        height: 135,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 233, 208, 245),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Center(
                                child: Image.asset('assets/images/ban.png'),
                              ),
                            ),
                            Text(
                              'Indigenous Fruits',
                              style: TextStyle(
                                color: Color(0xff6237A0),
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Manrope'
                              ),
                            ),
                            Text(
                              '18 Products',
                              style: TextStyle(
                                color: Color(0xffA786D6),
                                fontSize: 10,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Manrope'
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        padding: EdgeInsets.all(2),
                        width: 140,
                        height: 135,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 233, 208, 245),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Center(
                                child: Image.asset('assets/images/ban.png'),
                              ),
                            ),
                            Text(
                              'Indigenous Fruits',
                              style: TextStyle(
                                color: Color(0xff6237A0),
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Manrope'
                              ),
                            ),
                            Text(
                              '18 Products',
                              style: TextStyle(
                                color: Color(0xffA786D6),
                                fontSize: 10,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Manrope'
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        padding: EdgeInsets.all(2),
                        width: 140,
                        height: 135,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 233, 208, 245),
                        ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Center(
                            child: Image.asset(
                              'assets/images/pei.png',
                              fit: BoxFit.contain, 
                            ),
                          ),
                        ),
                        Text(
                          'Fruits',
                          style: TextStyle(
                            color: Color(0xff6237A0),
                            fontSize: 14,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'Manrope',
                          ),
                        ),
                        Text(
                          '18 Products',
                          style: TextStyle(
                            color: Color(0xffA786D6),
                            fontSize: 10,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'Manrope',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                        padding: EdgeInsets.all(2),
                        width: 140,
                        height: 135,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 233, 208, 245),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Center(
                                child: Image.asset('assets/images/bri.png'),
                              ),
                            ),
                            Text(
                              'Vegitables',
                              style: TextStyle(
                                color: Color(0xff6237A0),
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Manrope'
                              ),
                            ),
                            Text(
                              '18 Products',
                              style: TextStyle(
                                color: Color(0xffA786D6),
                                fontSize: 10,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Manrope'
                              ),
                            )
                          ],
                        ),
                      ),

                      
                ],
              ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(2),
                        width: 140,
                        height: 135,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 233, 208, 245),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Center(
                                child: Image.asset('assets/images/ban.png'),
                              ),
                            ),
                            Text(
                              'Indigenous Fruits',
                              style: TextStyle(
                                color: Color(0xff6237A0),
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Manrope'
                              ),
                            ),
                            Text(
                              '18 Products',
                              style: TextStyle(
                                color: Color(0xffA786D6),
                                fontSize: 10,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Manrope'
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        padding: EdgeInsets.all(2),
                        width: 140,
                        height: 135,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 233, 208, 245),
                        ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Center(
                            child: Image.asset(
                              'assets/images/pei.png',
                              fit: BoxFit.contain, 
                            ),
                          ),
                        ),
                        Text(
                          'Fruits',
                          style: TextStyle(
                            color: Color(0xff6237A0),
                            fontSize: 14,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'Manrope',
                          ),
                        ),
                        Text(
                          '18 Products',
                          style: TextStyle(
                            color: Color(0xffA786D6),
                            fontSize: 10,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'Manrope',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                        padding: EdgeInsets.all(2),
                        width: 140,
                        height: 135,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 233, 208, 245),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Center(
                                child: Image.asset('assets/images/bri.png'),
                              ),
                            ),
                            Text(
                              'Vegitables',
                              style: TextStyle(
                                color: Color(0xff6237A0),
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Manrope'
                              ),
                            ),
                            Text(
                              '18 Products',
                              style: TextStyle(
                                color: Color(0xffA786D6),
                                fontSize: 10,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Manrope'
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        padding: EdgeInsets.all(2),
                        width: 140,
                        height: 135,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 233, 208, 245),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Center(
                                child: Image.asset('assets/images/dar.png'),
                              ),
                            ),
                            Text(
                              'Exogenous Fruits',
                              style: TextStyle(
                                color: Color(0xff6237A0),
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Manrope'
                              ),
                            ),
                            Text(
                              '18 Products',
                              style: TextStyle(
                                color: Color(0xffA786D6),
                                fontSize: 10,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Manrope'
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        padding: EdgeInsets.all(2),
                        width: 140,
                        height: 135,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 233, 208, 245),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Center(
                                child: Image.asset('assets/images/ban.png'),
                              ),
                            ),
                            Text(
                              'Indigenous Fruits',
                              style: TextStyle(
                                color: Color(0xff6237A0),
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Manrope'
                              ),
                            ),
                            Text(
                              '18 Products',
                              style: TextStyle(
                                color: Color(0xffA786D6),
                                fontSize: 10,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Manrope'
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        padding: EdgeInsets.all(2),
                        width: 140,
                        height: 135,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 233, 208, 245),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Center(
                                child: Image.asset('assets/images/ban.png'),
                              ),
                            ),
                            Text(
                              'Indigenous Fruits',
                              style: TextStyle(
                                color: Color(0xff6237A0),
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Manrope'
                              ),
                            ),
                            Text(
                              '18 Products',
                              style: TextStyle(
                                color: Color(0xffA786D6),
                                fontSize: 10,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Manrope'
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        padding: EdgeInsets.all(2),
                        width: 140,
                        height: 135,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 233, 208, 245),
                        ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Center(
                            child: Image.asset(
                              'assets/images/pei.png',
                              fit: BoxFit.contain, 
                            ),
                          ),
                        ),
                        Text(
                          'Fruits',
                          style: TextStyle(
                            color: Color(0xff6237A0),
                            fontSize: 14,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'Manrope',
                          ),
                        ),
                        Text(
                          '18 Products',
                          style: TextStyle(
                            color: Color(0xffA786D6),
                            fontSize: 10,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'Manrope',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                        padding: EdgeInsets.all(2),
                        width: 140,
                        height: 135,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 233, 208, 245),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Center(
                                child: Image.asset('assets/images/bri.png'),
                              ),
                            ),
                            Text(
                              'Vegitables',
                              style: TextStyle(
                                color: Color(0xff6237A0),
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Manrope'
                              ),
                            ),
                            Text(
                              '18 Products',
                              style: TextStyle(
                                color: Color(0xffA786D6),
                                fontSize: 10,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Manrope'
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
            )
          ],
        ),
      )
    );
  }
}

class Description extends StatelessWidget {
  const Description({super.key});
  @override
  Widget build(BuildContext context){
    final double x = MediaQuery.of(context).size.width;
    final double y = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              height: y * 0.3,
              color: Color.fromARGB(255, 246, 233, 252),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: BackButton(
                          onPressed: () => Navigator.pop(context),
                          color: Colors.black,
                          style: ButtonStyle(),
                        ),
                      ),
                      Image.asset('assets/images/red_like.png', color: Color(0xffFA4141),),
                ],),
                Text('Banana', style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Manrope'
                ),),
              ],),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    height: y * 0.3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      Image.asset('assets/images/left.png'),
                      Image.asset('assets/images/ban.png'),
                      Image.asset('assets/images/right.png'),
                      ]
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text('Description', style: TextStyle(
                        color: Color(0xff6237A0),
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Manrope'
                      ),),
                      Center(
                        child: Container(
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.all(10),
                          child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur lacus felis, ornare quis dictum a, scelerisque ac purus. Mauris laoreet lacus eget egestas accumsan. ',style: TextStyle(
                            color: Color(0xff130F26),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Manrope'
                          ),),
                        ),
                      )
                    ],),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Auido', style: TextStyle(
                        color: Color(0xff6237A0),
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Manrope'
                      ),),
                      Center(child: Container(
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(children: [
                              
                            ],)
                          ],
                        ),
                      ),)
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}