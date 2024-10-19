import 'package:flutter/material.dart';

void main() {
  runApp(const home());
}

// The root widget of the application
class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes debug banner from the top-right corner
      title: 'GR HYPERMART',
      home: const homePage(), // Sets the home page
    );
  }
}

// Stateful widget for the home page
class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<homePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Aligns the widgets vertically in the center
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          mainAxisSize: MainAxisSize.min,
          children: [
            // Expanded widget to fill available space with an image
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xffffffff), // White background
                ),
                child: Image.asset('assets/images/logo.png'), // Displays the logo image
              ),
            ),
            // Expanded widget to hold the form and buttons
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xffffffff), // White background
                ),
                child: Column(
                  children: [
                    // Welcome text
                    const Text(
                      'Welcome to Piczo',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w700,
                        color: Color(0xff000000), // Black text color
                      ),
                    ),
                    const SizedBox(height: 30), // Adds spacing between text and input field
                    // Container for mobile number input
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xfff8f8f8), // Light grey background
                        borderRadius: const BorderRadius.all(Radius.circular(15)), // Rounded corners
                      ),
                      width: MediaQuery.of(context).size.width * 0.8, // 80% of screen width
                      height: MediaQuery.of(context).size.height * 0.1, // 10% of screen height
                      child: const TextField(
                        keyboardType: TextInputType.phone, // Numeric keyboard
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          color: Color(0xff000000), // Black text color
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none, // No border
                          filled: true,
                          fillColor: Color(0xfff8f8f8), // Matches container background
                          labelText: 'Mobile Number', // Input label
                        ),
                      ),
                    ),
                    // Get OTP button
                    ElevatedButton(
                      onPressed: () {
                        // Action when Get OTP button is pressed
                      },
                      child: const Text(
                        'Get OTP',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          color: Colors.white, // White text color
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(327, 50), // Button size
                        backgroundColor: const Color(0xff9754CB), // Purple background color
                      ),
                    ),
                    const SizedBox(height: 20), // Adds space between button and options
                    // Row for additional options (Login with password, Skip login)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround, // Distributes items evenly
                      children: const [
                        Text(
                          'Login with password',
                          style: TextStyle(
                            decoration: TextDecoration.underline, // Underlined text
                            fontFamily: 'Manrope',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000), // Black text color
                          ),
                        ),
                        Text(
                          'Skip login',
                          style: TextStyle(
                            decoration: TextDecoration.underline, // Underlined text
                            fontFamily: 'Manrope',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000), // Black text color
                          ),
                        ),
                      ],
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
