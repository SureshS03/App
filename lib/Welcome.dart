import 'package:flutter/material.dart';

void main() {
  runApp(const Welcome());
}

// Root of the application
class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}

// Home widget to display the main screen
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white, // Set background color to white
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Align content vertically in the center
          children: [
            // Display logo image at the top
            Expanded(
              flex: 3, // Allocate 2/3 of the space to the logo section
              child: Container(
                child: Image.asset('assets/images/logo.png'), // Logo asset path
              ),
            ),

            // Purple section with rounded top corners
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xff9754CB), // Purple background color
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(30), // Rounded top corners
                  ),
                ),
                width: double.maxFinite, // Full-width container
                height: 244, // Set a fixed height
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Distribute children with even space
                  children: [
                    // Title of the page
                    const Text(
                      'Welcome', // Title text
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: 'Marope',
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),

                    // Description text for the page
                    const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur lacus felis, ornare quis dictum a, scelerisque ac purus. Mauris laoreet lacus eget egestas accumsan.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Marope',
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),

                    // Row for the Sign Up and Login buttons
                    Row(
                      mainAxisSize: MainAxisSize.min, // Center align row in the middle
                      mainAxisAlignment: MainAxisAlignment.center, // Center align buttons in the row
                      children: [
                        // Sign Up button
                        ElevatedButton(
                          onPressed: () {}, // Placeholder for button action
                          child: const Text('Sign Up'),
                          style: ElevatedButton.styleFrom(
                            enabledMouseCursor: SystemMouseCursors.click, // Change cursor on hover
                            minimumSize: const Size(150, 47.25), // Button size
                            backgroundColor: Colors.white, // Button background color
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30), // Rounded corners for button
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10), // Button padding
                            shadowColor: Colors.black.withOpacity(1), // Button shadow color
                            elevation: 10, // Elevation for shadow
                          ),
                        ),
                        const SizedBox(width: 20), // Spacing between the two buttons

                        // Login button
                        ElevatedButton(
                          onPressed: () {}, // Placeholder for button action
                          child: const Text('Login'),
                          style: ElevatedButton.styleFrom(
                            enabledMouseCursor: SystemMouseCursors.click, // Change cursor on hover
                            minimumSize: const Size(150, 47.25), // Button size
                            backgroundColor: Colors.white, // Button background color
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30), // Rounded corners for button
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10), // Button padding
                            shadowColor: Colors.black.withOpacity(1), // Button shadow color
                            elevation: 10, // Elevation for shadow
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
