import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Background images
          PageView(
            children: <Widget>[
              Image.asset('assets/exercise.jpg', fit: BoxFit.cover),
              Image.asset('assets/painting.jpg', fit: BoxFit.cover),
              Image.asset('assets/office.jpg', fit: BoxFit.cover),
            ],
          ),
          // Text overlay
          Positioned(
            bottom: 150,
            left: 20,
            right: 20,
            child: Column(
              children: <Widget>[
                Text(
                  'Manage Your Daily Activity So Easy',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  'This smart tool is designed to help you manage your daily activity',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          // Get Started button
          Positioned(
            bottom: 50,
            left: 20,
            right: 20,
            child: ElevatedButton(
              onPressed: () {
                // Handle button press
              },
              child: Text('Get Started'),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                minimumSize: Size(double.infinity, 50),
              ),
            ),
          ),
        ],
      ),
    );
  }
}