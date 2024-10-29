import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    final x = MediaQuery.of(context).size.width;
    final y = MediaQuery.of(context).size.height;
    return Scaffold(
      body: 
      Column(
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
      bottomNavigationBar: NavigationBar(
        
        //labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        animationDuration: const Duration(milliseconds: 200),
        onDestinationSelected: (int index) {
          setState(() {
            page_index = index;
            if (index == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Categories(page_index: index,)),
              );
            }
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

class Categories extends StatelessWidget {
  final int page_index;
  const Categories({Key? key, required this.page_index}) : super(key: key);

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