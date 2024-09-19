import 'package:flutter/material.dart';
import 'package:taxi_booking/pages/view_vertical.dart';

class Find extends StatelessWidget {
  const Find({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff22272B),
      body: Container(
        height: 280, // Control the size of the bottom section
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xff22272B), // Background color
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5), // Shadow color with opacity
              blurRadius: 10, // Softens the shadow
              spreadRadius: 2, // Extends the shadow
              offset: const Offset(0, 5), // Horizontal and vertical offset
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0, left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black, // Background color for the icon
                      shape: BoxShape.rectangle, // Make the container rectangular
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5), // Shadow color with opacity
                          blurRadius: 10, // Softens the shadow
                          spreadRadius: 2, // Extends the shadow
                          offset: const Offset(0, 5), // Position the shadow downwards
                        ),
                      ],
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.menu, color: Colors.orange),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(width: 90),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        right: 2,
                        top: 1,
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.orange.withOpacity(0.8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.orange.withOpacity(0.6),
                                blurRadius: 50,
                                spreadRadius: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Text(
                        "riderzilla",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: "Kenia",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    prefixStyle: const TextStyle(
                      color: Colors.white,
                    ),
                    hintText: "No. 40/170 Piliyandala Rd, Pannipitiya",
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    filled: true,
                    fillColor: Colors.black,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    suffixIcon: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff22272B),
                        shape: BoxShape.rectangle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.orange.withOpacity(0.6), // Shadow color with opacity
                            blurRadius: 5, // Softens the shadow
                            offset: const Offset(0, 5), // Horizontal and vertical offset
                          ),
                        ],
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.add, color: Colors.orange),
                        onPressed: () {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context)=> ViewVertical()
                        )
                        );
                        },
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: TextField(
                  decoration: InputDecoration(
                    prefixStyle: const TextStyle(
                      color: Colors.white,
                    ),
                    hintText: "Enter Your Destination",
                    hintStyle: const TextStyle(
                      color: Colors.orange,
                    ),
                    filled: true,
                    fillColor: Colors.black,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
