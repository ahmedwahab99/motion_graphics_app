import 'package:flutter/material.dart';
import 'package:motion_graphics_app/constants.dart';

class SignupFields extends StatelessWidget {
  const SignupFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: ConstColors.primary)),
                focusedBorder: const OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 82, 33, 90))),
                labelText: "Full Name",
                labelStyle: TextStyle(color: ConstColors.secondary),
                suffixIcon: const Icon(Icons.person),
                suffixIconColor: ConstColors.secondary,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: ConstColors.primary)),
                focusedBorder: const OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 82, 33, 90))),
                labelText: "Email",
                labelStyle: TextStyle(color: ConstColors.secondary),
                suffixIcon: const Icon(Icons.mail),
                suffixIconColor: ConstColors.secondary,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: ConstColors.primary)),
                focusedBorder: const OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 82, 33, 90))),
                labelText: "Password",
                labelStyle: TextStyle(color: ConstColors.secondary),
                suffixIcon: const Icon(Icons.lock),
                suffixIconColor: ConstColors.secondary,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: ConstColors.primary,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.9),
                    blurRadius: 10,
                    offset: const Offset(1, 10), // changes position of shadow
                  ),
                ],
              ),
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Register",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
