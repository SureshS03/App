//import 'dart:io';

import 'package:flutter/material.dart';
import 'package:myapp/product.dart';

void main() {
  runApp(const homeScreen());
}

class homeScreen extends StatelessWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const homePage(),
    );
  }
}

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int page_index = 0;
    final List<Widget> pages = [
    Home(),
    Categories(),
    Like(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: IndexedStack(
        index: page_index,
        children: pages, // Display pages in IndexedStack
      ),
      bottomNavigationBar: NavigationBar(
        animationDuration: const Duration(milliseconds: 200),
        onDestinationSelected: (int index) {
          setState(() {
            page_index = index; // Update selected page index
          });
        },
        selectedIndex: page_index,
        indicatorColor: const Color(0xff9754CB),
        destinations: [
          NavigationDestination(
            icon: ImageIcon(AssetImage('assets/images/home.png')),
            label: 'Home',
          ),
          NavigationDestination(
            icon: ImageIcon(AssetImage('assets/images/cat.png')),
            label: 'Categories',
          ),
          NavigationDestination(
            icon: ImageIcon(AssetImage('assets/images/like.png')),
            label: 'Favourites',
          ),
          NavigationDestination(
            icon: ImageIcon(AssetImage('assets/images/grp.png')),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
class Home extends StatelessWidget {

  
  const Home({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        final x = MediaQuery.of(context).size.width;
    final y = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        child:       Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            //flex: 1,
            height: y * 0.25,
            child: Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Color(0xff9754CB),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Hey, Sarah',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Manrope',
                          ),
                        ),
                        Image.asset('assets/images/Scanner.png'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(x * 0.9, y * 0.055),
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
                  const SizedBox(height: 20),
                  // Integrated Referral Button
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    height: 60,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 30),
                          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [Color(0xFFFF6B6B), Color(0xFFFF8EC7)],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 4,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                          child: const Text(
                            'Refer Your Friends to earn free credits*',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Manrope',
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          bottom: 10, // Adjust this value to move image up/down
                          child: SizedBox(
                            height: 70,
                            width: 70,
                            child: Image.asset(
                              'assets/images/man.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            //flex: 3,
            child: Container(
              color: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Favourites', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800, fontFamily: 'Manrope',color:  Color(0xff9754CB))),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.5),
                      Text('See All', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800, fontFamily: 'Manrope', color:  Color(0xff9754CB))),
                    ],
                  ),
                  SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 160,
                            height: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(0xffF8EDFD),
                            ),
                            child: Column(
                              children: [
                                Image.asset('assets/images/te.png'),
                                Text('School', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800, fontFamily: 'Manrope', color:  Color(0xff9754CB))),
                              ],
                            ),
                          ),
                          Container(
                            width: 160,
                            height: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(0xffF8EDFD),
                            ),
                            child: Column(

                              children: [
                                Image.asset('assets/images/g.png'),
                                Text('Vegetables', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800, fontFamily: 'Manrope', color:  Color(0xff9754CB))),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 35),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(width: 160,
                            height: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(0xffF8EDFD),
                            ),
                            child: Column(

                              children: [
                                Image.asset('assets/images/m.png'),
                                Text('Vegetables', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800, fontFamily: 'Manrope', color:  Color(0xff9754CB))),
                              ],
                            ),
                          ),
                          Container(width: 160,
                            height: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(0xffF8EDFD),
                            ),
                            child: Column(

                              children: [
                                Image.asset('assets/images/food.png'),
                                Text('Vegetables', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800, fontFamily: 'Manrope', color:  Color(0xff9754CB))),
                              ],
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  )
                
                ]
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final x = MediaQuery.of(context).size.width;
    final y = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Container(
                //padding: EdgeInsets.all(10),
                height: y * 0.3,
                decoration: BoxDecoration(
                  color: Color(0xff9754CB)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Hey, Sarah',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Manrope',
                        ),
                        ),
                        ElevatedButton(onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Product()),
                            );
                        } ,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff9754CB),
                          side: BorderSide.none,
                          
                        ),
                       
                          child:
                        Image.asset('assets/images/sicon.png',color: Colors.white,))
                      ],
                    ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Search',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Manrope',
                      ),
                    ),
                    ),
                    Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'By Category',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Manrope',
                      ),
                    )
                    )
                  ],
                ),
              ),
            Expanded(
              flex: 3,
              child: Expanded(
                child:
              Container(
                
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              child: Image.asset('assets/images/smallg.png'),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 243, 218, 254),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text('Fruits & Vegie', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700, fontFamily: 'Manrope', color: Colors.grey)),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              child: Image.asset('assets/images/car.png'),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 243, 218, 254),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text('Travel', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700, fontFamily: 'Manrope', color: Colors.grey)),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              child: Image.asset('assets/images/smallfood.png'),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 243, 218, 254),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text('Food', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700, fontFamily: 'Manrope', color: Colors.grey)),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              child: Image.asset('assets/images/smallt.png'),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 243, 218, 254),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text('School', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700, fontFamily: 'Manrope', color: Colors.grey)),
                          ],
                        ),
                      ],

                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              child: Image.asset('assets/images/smallg.png'),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 243, 218, 254),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text('Fruits & Vegie', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700, fontFamily: 'Manrope', color: Colors.grey)),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              child: Image.asset('assets/images/car.png'),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 243, 218, 254),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text('Travel', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700, fontFamily: 'Manrope', color: Colors.grey)),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              child: Image.asset('assets/images/smallfood.png'),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 243, 218, 254),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text('Food', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700, fontFamily: 'Manrope', color: Colors.grey)),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              child: Image.asset('assets/images/smallt.png'),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 243, 218, 254),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text('School', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700, fontFamily: 'Manrope', color: Colors.grey)),
                          ],
                        ),
                      ],

                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              child: Image.asset('assets/images/smallg.png'),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 243, 218, 254),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text('Fruits & Vegie', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700, fontFamily: 'Manrope', color: Colors.grey)),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              child: Image.asset('assets/images/car.png'),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 243, 218, 254),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text('Travel', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700, fontFamily: 'Manrope', color: Colors.grey)),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              child: Image.asset('assets/images/smallfood.png'),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 243, 218, 254),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text('Food', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700, fontFamily: 'Manrope', color: Colors.grey)),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              child: Image.asset('assets/images/smallt.png'),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 243, 218, 254),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text('School', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700, fontFamily: 'Manrope', color: Colors.grey)),
                          ],
                        ),
                      ],

                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              child: Image.asset('assets/images/smallg.png'),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 243, 218, 254),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text('Fruits & Vegie', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700, fontFamily: 'Manrope', color: Colors.grey)),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              child: Image.asset('assets/images/car.png'),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 243, 218, 254),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text('Travel', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700, fontFamily: 'Manrope', color: Colors.grey)),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              child: Image.asset('assets/images/smallfood.png'),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 243, 218, 254),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text('Food', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700, fontFamily: 'Manrope', color: Colors.grey)),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              child: Image.asset('assets/images/smallt.png'),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 243, 218, 254),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text('School', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700, fontFamily: 'Manrope', color: Colors.grey)),
                          ],
                        ),
                      ],

                    ),
                  ],
                ),
              ),
              )
            )

          ],
        ),
      )
    );
  }
}

class Like extends StatelessWidget {
  const Like({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
            
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
    const Profile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
        final x = MediaQuery.of(context).size.width;
    final y = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex : 1,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: y * 0.45,
                decoration: BoxDecoration(
                  color: Color(0xff9754CB),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Image.asset('assets/images/sicon.png',color: Colors.white,),
                        ],
                      ),
                    ),
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 243, 225, 252),
                        borderRadius: BorderRadius.circular(60)
                      ),
                      child: Image.asset('assets/images/pro.png'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Karthika',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Rubik',
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                        ),
                        SizedBox(width: 15),
                        Image.asset('assets/images/edit.png'),
                      ],
                    ),
                    Text('+91 98765 43210    |    user@gmail.com',style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Rubik',
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),)
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.all(20),
                
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    
                    Container(
                      height: y * 0.32,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          width: x * 0.9,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromARGB(255, 250, 251, 209)
                          ),
                          child: Row(
                            children: [
                              Image.asset('assets/images/like.png',color: Color(0xffFF9900)),
                              SizedBox(width: 40),
                              Text('Favourites',style: TextStyle(
                                
                                fontFamily: 'Rubik',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),)
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          width: x * 0.9,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromARGB(255, 253, 208, 255)
                          ),
                          child: Row(
                            children: [
                              Image.asset('assets/images/lock.png',color: Color(0xffA146A5)),
                              SizedBox(width: 40),
                              Text('Change Password',style: TextStyle(
                                
                                fontFamily: 'Rubik',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),)
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          width: x * 0.9,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromARGB(255, 211, 253, 208)
                          ),
                          child: Row(
                            children: [
                              Image.asset('assets/images/sq.png',color: Color(0xff31BB01)),
                              SizedBox(width: 40),
                              Text('Helpline / Support',style: TextStyle(
                                fontFamily: 'Rubik',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),)
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          width: x * 0.9,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromARGB(255, 216, 243, 255)
                      
                          ),
                          child: Row(
                            children: [
                              Image.asset('assets/images/logout.png',color: Color(0xff00B0FF)),
                              SizedBox(width: 40),
                              Text('Favourites',style: TextStyle(
                                
                                fontFamily: 'Rubik',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),)
                            ],
                          ),
                        )
                      ],),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text('Made With ❤️\nBy Piczo',style: TextStyle(
                            fontFamily: 'Manrope',
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            
                          ),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}