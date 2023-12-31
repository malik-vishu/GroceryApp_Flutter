import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/utils/all_routes.dart';
import 'package:grocery_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
        color: MyThemes.purple,
        child: Form(
          key: formKey,
          child: Card(
            elevation: 2.5,
            color: Color.fromARGB(255, 108, 6, 203),
            margin: (formKey.currentState != null &&
                    !formKey.currentState!.validate())
                ? EdgeInsets.fromLTRB(28, 280, 28, 200)
                : EdgeInsets.fromLTRB(28, 280, 28, 260),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(15, 15, 15, 20),
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                        border: Border.all(
                            width: 3.5, color: MyThemes.lightYellow)),
                    child: Column(
                      children: [
                        "WELCOME!!"
                            .text
                            .color(MyThemes.lightYellow)
                            .fontFamily(MyThemes.headingFonts)
                            .widest
                            .xl4
                            .make(),
                        const SizedBox(
                          height: 20,
                        ),
                        FormField(
                            leadingIcon: Icons.account_box_outlined,
                            hintText: "Enter Username",
                            labelText: "Username",
                            obscureText: false,
                            formKey: formKey),
                        const SizedBox(
                          height: 10,
                        ),
                        FormField(
                          leadingIcon: CupertinoIcons.eye,
                          hintText: "Enter Password",
                          labelText: "Password",
                          obscureText: true,
                          formKey: formKey,
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
                            onPressed: () {
                              if (formKey.currentState != null &&
                                  formKey.currentState!.validate()) {
                                print("Login Done");
                                Navigator.pushNamed(context, AllRoutes.nav);
                              } else {
                                setState(() {});
                              }
                            },
                            child: "Login"
                                .text
                                .fontFamily(MyThemes.headingFonts)
                                .hexColor("FFD8DB27")
                                .make())
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class FormField extends StatefulWidget {
  FormField({
    Key? key,
    required this.leadingIcon,
    required this.hintText,
    required this.labelText,
    required this.obscureText,
    required GlobalKey<FormState> formKey,
  }) : super(key: key);

  final IconData leadingIcon;
  final String hintText;
  final String labelText;
  bool obscureText;

  @override
  State<FormField> createState() => _FormFieldState();
}

class _FormFieldState extends State<FormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: MyThemes.lightYellow),
      cursorColor: MyThemes.lightYellow,
      obscureText: widget.obscureText,
      validator: (value) {
        if (widget.labelText == "Password") {
          if (value != null && value.isEmpty) {
            return "Password cannot be empty";
          } else if (value != null && value.length < 6) {
            return "Length should be atleast 6";
          }
          return null;
        } else {
          if (value != null && value.isEmpty) {
            return "Username cannot be empty";
          }
          return null;
        }
      },
      decoration: InputDecoration(
        focusedErrorBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: MyThemes.headingBlueColor)),
        errorBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: MyThemes.headingBlueColor)),
        errorStyle: const TextStyle(
            color: MyThemes.headingBlueColor,
            fontFamily: MyThemes.headingFonts),
        icon: IconButton(
          onPressed: () {
            setState(() {
              widget.obscureText = !widget.obscureText;
            });
          },
          icon: (widget.obscureText && widget.labelText == "Password" ||
                  !widget.obscureText && widget.labelText == "Username")
              ? Icon(widget.leadingIcon)
              : Icon(CupertinoIcons.eye_slash),
          color: MyThemes.lightYellow,
          iconSize: 40,
        ),
        hintStyle: const TextStyle(
            color: MyThemes.lightYellow, fontFamily: MyThemes.headingFonts),
        labelStyle: const TextStyle(
            color: MyThemes.lightYellow, fontFamily: MyThemes.headingFonts),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: MyThemes.lightYellow),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: MyThemes.lightYellow),
        ),
        hintText: widget.hintText,
        labelText: widget.labelText,
      ),
    );
  }
}
