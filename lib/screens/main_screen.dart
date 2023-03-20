import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../config/palette.dart';

class LoginSignUpScreen extends StatefulWidget {
  const LoginSignUpScreen({Key? key}) : super(key: key);

  @override
  State<LoginSignUpScreen> createState() => _LoginSignUpScreenState();
}

class _LoginSignUpScreenState extends State<LoginSignUpScreen> {
  bool isSignupScreen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Palette.backgroundColor,
        body: Stack(
          children: [
            Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('background.png'), fit: BoxFit.fill),
                  ),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(20, 90, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                            text: TextSpan(
                                text: 'Welcome ',
                                style: TextStyle(
                                    letterSpacing: 1.0,
                                    fontSize: 25,
                                    color: Colors.white),
                                children: [
                              TextSpan(
                                  text: 'to EOS chat',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ))
                            ])),
                        SizedBox(height: 5.0),
                        Text('Signup to continue',
                            style: TextStyle(
                                letterSpacing: 1.0, color: Colors.white))
                      ],
                    ),
                  ),
                )),
            Positioned(
                top: 150,
                child: Container(
                  height: 280,
                  padding: EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width - 40,
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 15,
                            spreadRadius: 5)
                      ]),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          child: Column(
                            children: [
                              Text('LOGIN',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: isSignupScreen == false
                                          ? Palette.activeColor
                                          : Palette.textColor1)),
                              if (isSignupScreen == false)
                                Container(
                                    margin: EdgeInsets.only(top: 3),
                                    height: 2,
                                    width: 55,
                                    color: Colors.green)
                            ],
                          ),
                        ),
                        GestureDetector(
                            child: Column(
                          children: [
                            Text('SIGNUP',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: isSignupScreen == true
                                        ? Palette.activeColor
                                        : Palette.textColor1)),
                            if (isSignupScreen == true)
                              Container(
                                  margin: EdgeInsets.only(top: 3),
                                  height: 2,
                                  width: 55,
                                  color: Colors.green)
                          ],
                        ))
                      ],
                    ),
                    Container(
                        child: Form(
                      child: Column(children: [
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(CupertinoIcons.person_crop_circle),
                            iconColor: Palette.iconColor,
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Palette.textColor1),
                                borderRadius: BorderRadius.circular(35)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Palette.textColor1),
                                borderRadius: BorderRadius.circular(35)),
                          ),
                        )
                      ]),
                    ))
                  ]),
                ))
          ],
        ));
  }
}
