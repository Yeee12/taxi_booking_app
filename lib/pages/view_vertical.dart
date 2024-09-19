import 'package:flutter/material.dart';
import 'package:taxi_booking/pages/rating.dart';

class ViewVertical extends StatelessWidget {
  const ViewVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2D343C),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end, // Align content at the bottom
        children: [
          // Outer Container wrapping the Material widget
          Container(
            height: 350, // Set height for the outer container (larger)
            padding: const EdgeInsets.all(10), // Add padding to the outer container
            decoration: const BoxDecoration(
              color: Colors.black, // Background color of outer container
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), // Outer container border radius
                topRight: Radius.circular(40),
              ),
            ),
            // Align the inner container at the bottom
            child: Column(
              children: [
                // Add a Row to place the text and button beside each other
                Padding(
                  padding: const EdgeInsets.only(right:5, left: 50), // Add vertical padding
                  child: Row(
                 // Align text and button
                    children: [
                      const Expanded(
                        child: Text(
                          "No. 40 Piliyandala Rd, Pannipitiyae",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis, // Handle text overflow
                        ),
                      ), // Add some space between text and button
                      ElevatedButton(
                        onPressed: () {
                          // Add functionality here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        child: const Text(
                          "Prices",
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    "351 R. A. De Mel Mawatha Colombo",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Spacer(), // Pushes the inner container to the bottom
                // Inner Container (wrapped in Material widget)
                Material(
                  elevation: 10, // Add elevation to the inner container
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  child: Container(
                    height: 200, // Set smaller height for the inner container
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xff22272B), // Background color of inner container
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              // Wrapping Icon in a Container for border radius
                              buildIconContainer("assets/images/bike.png", "Motor Bike", "Rs.129"),
                              buildIconContainer("assets/images/keke.png", "Keke", "Rs.129"),
                              buildIconContainer("assets/images/cab.png", "Flex", "Rs.129"),
                              buildIconContainer("assets/images/van.png", "Van", "Rs.129"),
                            ],
                          ),
                          const SizedBox(height: 20),
                          // Elevated Button inside another elevated container (Material)
                          Material(
                            elevation: 5, // Smaller elevation for button
                            borderRadius: BorderRadius.circular(30),
                            child: ElevatedButton(
                              onPressed: () {
                               Navigator.push(context,
                               MaterialPageRoute(builder: (BuildContext context)=> Rating()
                               )
                               );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                              ),
                              child: const Text(
                                "GET A CAR",
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
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper function to create the icon containers
  Container buildIconContainer(String assetPath, String title, String price) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black, // Background color
        borderRadius: BorderRadius.circular(15), // Border radius
      ),
      padding: const EdgeInsets.all(8), // Padding around the icon
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Icon
          IconButton(
            onPressed: () {},
            icon: Image.asset(assetPath),
            iconSize: 20, // Adjust the icon size
          ),
          // Title
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
          // Price
          Text(
            price,
            style: const TextStyle(
              color: Colors.orange, // Highlight the price with a different color
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
