import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_graphics_app/constants.dart';
import 'package:motion_graphics_app/view/widgets/login_fields.dart';
import 'package:motion_graphics_app/view/widgets/signup_fields.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(250),
          child: AppBar(
            automaticallyImplyLeading: false,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [ConstColors.primary, ConstColors.secondary],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    Text(
                      Labels.appName,
                      style: GoogleFonts.dancingScript(
                          fontSize: 40, color: Colors.white),
                    ),
                    //SizedBox(height: 10,),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                      child: Text(
                        "The first Mobile app deticated for Motion Graphics Courses",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ),
            bottom: const TabBar(
              //isScrollable: true,
              indicatorColor: Colors.white,
              indicatorWeight: 5,
              tabs: [
                Tab(text: 'LOGIN'),
                Tab(text: 'SIGN UP'),
              ],
            ),
            elevation: 20,
            titleSpacing: 40,
          ),
        ),
        body: const TabBarView(children: [
          LoginFields(),
          SignupFields(),
        ]),
      ),
    );
  }
}
