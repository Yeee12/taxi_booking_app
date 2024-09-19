import 'package:flutter/material.dart';
import 'package:taxi_booking/pages/splash2.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    redirect(); // Call the redirect function here
  }
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  right: 2,
                  top: 1,
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.orange.withOpacity(0.8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.orange.withOpacity(0.6),
                            blurRadius: 50,
                            spreadRadius: 20,
                          )
                        ]
                    ),
                  ),
                ),
                Text("riderzilla",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 80,
                      fontFamily: "Kenia"
                  ),
                ),
              ],
            ),
          ),
        );
  }
  Future<void> redirect() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushReplacement(context,
      MaterialPageRoute(
        builder: (BuildContext context) => Splash2(),
      ),
    );
  }
}
