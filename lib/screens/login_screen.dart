import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Color(0xFF8E2AEB),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //const SizedBox(height: 160),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  padding: const EdgeInsets.fromLTRB(15, 15, 15, 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      border: Border.all(width: 3.5, color: Color(0xFFD8DB27))),
                  child: Column(
                    children: [
                      "WELCOME!!".text.color(Color(0xFFD8DB27)).xl3.make(),
                      TextFormField(
                        cursorColor: Color(0xFFD8DB27),
                        decoration: const InputDecoration(
                            hintStyle: TextStyle(color: Color(0xFFD8DB27)),
                            labelStyle: TextStyle(color: Color(0xFFD8DB27)),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFD8DB27)),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFD8DB27)),
                            ),
                            hintText: "Enter Username",
                            labelText: "Username"),
                      ),
                      TextFormField(
                        cursorColor: Color(0xFFD8DB27),
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintStyle: TextStyle(color: Color(0xFFD8DB27)),
                            labelStyle: TextStyle(color: Color(0xFFD8DB27)),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFD8DB27)),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFD8DB27)),
                            ),
                            hintText: "Enter Password",
                            labelText: "Password"),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              minimumSize: Size(100, 40),
                              maximumSize: Size(120, 60),
                              side: BorderSide(
                                  width: 1.0, color: Color(0xFFD8DB27))),
                          onPressed: () {},
                          child: "Login".text.hexColor("FFD8DB27").make())
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
