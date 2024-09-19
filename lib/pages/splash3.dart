import 'package:flutter/material.dart';
import 'package:taxi_booking/pages/splash4.dart';


class Splash3 extends StatefulWidget {
  @override
  State<Splash3> createState() => _Splash3State();
}

class _Splash3State extends State<Splash3> {
  @override
  void initState() {
    super.initState();
    redirect(); // Call the redirect function here
  }
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Image.asset(
                "assets/images/Vector.png" ,// Replace this with the city silhouette image
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Image.asset(
                "assets/images/Group 3.png" ,// Replace this with the city silhouette image
                fit: BoxFit.cover,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 60,),
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
                                )
                              ]
                          ),
                        ),
                      ),
                      const Text("riderzilla",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: "Kenia"
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 70,),
                Image.asset("assets/images/_1fd.png",),
                const SizedBox(height: 90,),
                const Padding(
                  padding: EdgeInsets.only(right: 150),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Exeptional", style: TextStyle(
                          fontSize: 40,
                          color: Colors.orange,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold
                      ),
                      ),
                      Text("bonuses",
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white
                        ),),
                      SizedBox(height: 8,),
                      Text("Up to 100\$ welcome bonus \n the fast week.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        )
    );
  }
  Future<void> redirect() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushReplacement(context,
      MaterialPageRoute(
        builder: (BuildContext context) => const Splash4(),
      ),
    );
  }
}
