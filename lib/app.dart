import 'dart:async';
import 'package:flutter/material.dart';
import 'package:myapp/Welcome.dart';

void main() {
  runApp(const MyApp());
}

/// Root widget of the application
/// Sets up the MaterialApp and initial route
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GR HYPERMART',
      home: SplashScreen(),
    );
  }
}

/// Splash screen widget displayed when the app starts
/// Shows for 3 seconds before navigating to the main walkthrough
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    
    // Navigate to MyHome after 3 seconds
    Timer(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const MyHome()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/logo.png'),
      ),
    );
  }
}

/// Main walkthrough screen that displays onboarding content
/// Features multiple pages with title, description, and navigation
class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  _MyHome createState() => _MyHome();
}

class _MyHome extends State<MyHome> {
  // Track current page in walkthrough
  int currentPage = 0;
  
  // Content for walkthrough pages
  final List<Map<String, String>> pages = const [
    {
      'title': 'Lorem ipsum dolorsit amet',
      'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
          'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    },
    {
      'title': 'Lorem ipsum dolorsit amet',
      'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
          'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    },
    {
      'title': 'Lorem ipsum dolorsit amet',
      'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
          'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            // Logo section
            Expanded(
              flex: 2,
              child: Image.asset('assets/images/logo.png'),
            ),
            
            // Purple content section with rounded corners
            Expanded(
              flex: 1,
              child: Container(
                
                decoration: const BoxDecoration(
                  color: Color(0xff9754CB),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30),
                  ),
                ),
                width: double.maxFinite,
                height: 375,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Page indicator dots
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        3,
                        (index) => Container(
                          margin: const EdgeInsets.symmetric(horizontal: 3),
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: currentPage == index
                                ? Colors.white
                                : Colors.white.withOpacity(0.5),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ),
                    
                    // Page title
                    Text(
                      pages[currentPage]['title']!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: 'Marope',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    
                    // Page description with optional arrow
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            pages[currentPage]['description']!,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Marope',
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        if (currentPage == 2)
                          Positioned(
                            bottom: -10,
                            right: 100,
                            child: Image.asset(
                              'assets/images/Arrow.png',
                              width: 60,
                              height: 60,
                            ),
                          ),
                      ],
                    ),
                    
                    // Navigation button
                    ElevatedButton(
                      onPressed: () {
                        if (currentPage == 2) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Welcome()),
                          );
                        } else {
                          setState(() {
                            currentPage++;
                          });
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        enabledMouseCursor: SystemMouseCursors.click,
                        minimumSize: const Size(261, 57),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 50,
                          vertical: 10,
                        ),
                        shadowColor: Colors.black,
                        elevation: 10,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            currentPage != 2 ? 'Next' : 'Get Started',
                            style: const TextStyle(
                              fontSize: 16,
                              fontFamily: 'Marope',
                              fontWeight: FontWeight.w600,
                              
                            ),
                            textAlign: TextAlign.center,
                          ),
                          
                          if (currentPage == 2) ...{
                            const SizedBox(width: 20),
                            Image.asset('assets/images/Arrow1.png'),
                          }
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}