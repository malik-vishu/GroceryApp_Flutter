import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: const Color(0xFF8E2AEB),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  padding: const EdgeInsets.fromLTRB(15, 15, 15, 20),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      border: Border.all(
                          width: 3.5, color: const Color(0xFFD8DB27))),
                  child: Column(
                    children: [
                      "WELCOME!!"
                          .text
                          .color(const Color(0xFFD8DB27))
                          .xl4
                          .make(),
                      const SizedBox(
                        height: 20,
                      ),
                      FormField(
                        leadingIcon: Icons.account_box_outlined,
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      FormField(
                        leadingIcon: CupertinoIcons.eye,
                        hintText: "Enter Password",
                        labelText: "Password",
                        obscureText: true,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              minimumSize: const Size(100, 40),
                              maximumSize: const Size(120, 60),
                              side: const BorderSide(
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

class FormField extends StatelessWidget {
  FormField({
    Key? key,
    required this.leadingIcon,
    required this.hintText,
    required this.labelText,
    this.obscureText,
  }) : super(key: key);

  final IconData leadingIcon;
  final String hintText;
  final String labelText;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: const Color(0xFFD8DB27),
      obscureText: true,
      decoration: InputDecoration(
          icon: Icon(
            leadingIcon,
            color: const Color(0xFFD8DB27),
            size: 40,
          ),
          hintStyle: const TextStyle(color: Color(0xFFD8DB27)),
          labelStyle: const TextStyle(color: Color(0xFFD8DB27)),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFD8DB27)),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFD8DB27)),
          ),
          hintText: hintText,
          labelText: labelText),
    );
  }
}
