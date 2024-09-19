import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: FractionallySizedBox(
          heightFactor: 0.86, // Height percentage
          widthFactor: 0.93, // Width percentage
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0xff222834), // Background color
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Circular image
                ClipOval(
                  child: Image.asset(
                    'assets/images/Ellipse 8.png', // Path to your image asset
                    width: 150, // Adjust the size as needed
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 10), // Space between image and text
                const Text(
                  'Lily Sharanya Alwis',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 80),
                const Text(
                  'Wow! A 5 star!',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Wanna add tip for Anura',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomButton(label: 'Rs.50'),
                    CustomButton(label: 'Rs.100'),
                    CustomButton(label: 'Rs.200'),
                    CustomButton(label: 'Rs.500'),
                  ],
                ),
                const SizedBox(height: 90), // Space between text and button
                Material(
                  elevation: 5, // Button elevation
                  borderRadius: BorderRadius.circular(30),
                  child: ElevatedButton(
                    onPressed: () {
                      // Add functionality
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      'Rate Driver',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String label;

  const CustomButton({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xff2D343C),
        borderRadius: BorderRadius.circular(7),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5), // Shadow color
            spreadRadius: 1, // Spread radius
            blurRadius: 6, // Blur radius
            offset: const Offset(0, 3), // Offset for shadow
          ),
        ],
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    );
  }
}

