import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:motion_graphics_app/constants.dart';
import 'signin_up.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [ConstColors.purple, ConstColors.blue],
                begin: Alignment.bottomCenter,
                end: Alignment.center)),
        child: Center(
            child: Padding(
                padding: const EdgeInsets.only(top: 90),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: const Image(
                          image: AssetImage(
                            "images/splashScreen.png",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text("Ready to Start ?",
                        style: GoogleFonts.raleway(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 20,
                    ),
                    Text("Bring your Vision to Life",
                        style: GoogleFonts.raleway(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 80,
                    ),
                    Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.deepOrange,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.2),
                           // spreadRadius: 1,
                            blurRadius: 10,
                            offset: const Offset(2, 10), // changes position of shadow
                          ),
                        ],
                      ),
                      child: TextButton(
                          onPressed: () {
                            Get.to(Signin());
                          },
                          child: const Text(
                            "Get Stared",
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          )),
                    )
                  ],
                ))),
      ),
    );
  }
}
