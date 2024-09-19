import 'package:flutter/material.dart';
import 'package:taxi_booking/pages/find.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2D343C),
      body: Column(
        children: [
          // Wrapping the Image with Expanded to make it take flexible space
          Expanded(
            flex: 3, // This can be adjusted as needed
            child: Padding(
              padding: const EdgeInsets.only(top: 180),
              child: Image.asset(
                "assets/images/_1fde.png",
                width: 330,
              ),
            ),
          ),
          Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  right: 2,
                  top: 1,
                  child: Container(
                    width: 15,
                    height: 15,
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
                    fontSize: 40,
                    fontFamily: "Kenia",
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 60,),
          const Padding(
            padding: EdgeInsets.only(right: 120),
            child: Text(
              "Phone Number",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                prefixText: "+234",
                prefixStyle: const TextStyle(
                  color: Colors.white,
                ),
                hintText: "1234567",
                hintStyle: const TextStyle(
                  color: Colors.grey,
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
          const SizedBox(height: 40,),
          // Wrapping remaining content with Container to apply background and curves
          Container(
            height: 230, // Increase this height to control the size of the bottom section
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xff22272B), // Background color
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "or sign up with",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 35,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Wrapping Icon in a Container for border radius
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black,// You can adjust the background color
                        borderRadius: BorderRadius.circular(15), // Border radius
                      ),
                      padding: const EdgeInsets.all(8), // Padding around the icon
                      child: IconButton(
                        onPressed: () {},
                        icon: Image.asset("assets/images/google.png"),
                        iconSize: 30, // Adjust the icon size
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: IconButton(
                        onPressed: () {},
                        icon: Image.asset("assets/images/f.png"),
                        iconSize: 30,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: IconButton(
                        onPressed: () {},
                        icon: Image.asset("assets/images/a.png"),
                        iconSize: 30,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: IconButton(
                        onPressed: () {},
                        icon: Image.asset("assets/images/i.png"),
                        iconSize: 30,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25,),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const Find()
                    )
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    "LOGIN",
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.white,
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
}
