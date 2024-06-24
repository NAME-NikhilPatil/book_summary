import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color(0xFFFDF8F6), // Background color matching the image
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Image
              Image.asset(
                'assets/splash1.png',
                // height: MediaQuery.of(context).size.height * 0.4,
                // fit: BoxFit.contain,
              ),
              // Progress Indicator
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildProgressDot(true),
                    _buildProgressDot(false),
                    _buildProgressDot(false),
                  ],
                ),
              ),
              // Title
              const Text(
                'Books in 15 minutes',
                style: TextStyle(
                  fontSize: 22, // Adjusted font size
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              // Subtitle
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
                child: Text(
                  'We read the best books, highlight key ideas and insights, and create summaries for you',
                  style: TextStyle(
                    fontSize: 15, // Adjusted font size
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              // Continue Button
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 40.0, vertical: 20.0),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle button press
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: const EdgeInsets.symmetric(
                          vertical: 15), // Fixed button height
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Text(
                      'Continue',
                      style: TextStyle(
                        fontSize: 16, // Button text size
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              // Login Text
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: RichText(
                  text: TextSpan(
                    text: 'Already have an account? ',
                    style: const TextStyle(color: Colors.grey),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Login',
                        style: const TextStyle(color: Colors.blue),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // Handle login tap
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProgressDot(bool isActive) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        color: isActive ? Colors.blue : Colors.grey[300],
        shape: BoxShape.circle,
      ),
    );
  }
}
