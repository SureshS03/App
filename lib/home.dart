import 'package:flutter/material.dart';

void main() {
  runApp(const home());
}

class home extends StatelessWidget {
  const home({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GR HYPERMART',
      home: homePage(),
    );
  }
}

class homePage extends StatefulWidget {
  const homePage({Key? key});

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<homePage> {
  
  @override
  Widget build(BuildContext context) {
    //double x = MediaQuery.of(context).size.height;
    //double y = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                ),
              child: Image.asset('assets/images/logo.png'),
              )
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                ),
              child: Column(
                children: [
                  Text('Welcome to Piczo',style: TextStyle(fontSize: 18,fontFamily: 'Manrope',fontWeight: FontWeight.w700,color: const Color(0xff000000)),),
                  SizedBox(height: 30,),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xfff8f8f8),
                      borderRadius: const BorderRadius.all(Radius.circular(15)
                      ),
                    ),
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      style: TextStyle(fontFamily: 'Manrope',color: const Color(0xff000000)),
                      decoration: InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                      fillColor: const Color(0xfff8f8f8),
                      labelText: 'Mobile Number',
                    ),
                    
                  ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Get OTP',style: TextStyle(fontFamily: 'Manrope',color: Colors.white),),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(327,50),
                      backgroundColor: const Color(0xff9754CB),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Login with password',style: TextStyle(decoration: TextDecoration.underline,fontFamily: 'Manrope',fontSize: 12,fontWeight: FontWeight.w400,color: const Color(0xff000000)),),
                      Text('Skip login',style: TextStyle(decoration: TextDecoration.underline,fontFamily: 'Manrope',fontSize: 12,fontWeight: FontWeight.w400,color: const Color(0xff000000)),),

                    ],
                  ),
                  
                ]
              )
              )
            )

          ],
        ),
      )
    );
  }
}