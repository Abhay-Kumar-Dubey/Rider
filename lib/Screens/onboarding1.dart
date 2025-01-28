import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rider/Screens/otpScreen.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                child: Stack(
                  children: [
                    SvgPicture.asset(
                      'lib/images/Ellipse 14.svg',
                      width: MediaQuery.of(context).size.width,
                    ),
                    Positioned(
                        right: MediaQuery.of(context).size.width * 0.2,
                        top: MediaQuery.of(context).size.height * 0.17,
                        child: Image.asset('lib/images/Rectangle 7.png')),
                    Positioned(
                        right: MediaQuery.of(context).size.width * 0.6,
                        top: MediaQuery.of(context).size.height * 0.2,
                        child: Image.asset('lib/images/Rectangle 8.png')),
                    Positioned(
                        right: MediaQuery.of(context).size.width * 0.82,
                        top: MediaQuery.of(context).size.height * 0.16,
                        child: Image.asset('lib/images/Rectangle 9.png')),
                    Positioned(
                        right: MediaQuery.of(context).size.width * 0.9,
                        top: MediaQuery.of(context).size.height * 0.3,
                        child: Image.asset('lib/images/Rectangle 10.png')),
                    Positioned(
                        right: MediaQuery.of(context).size.width * 0.1,
                        top: MediaQuery.of(context).size.height * 0.35,
                        child: Image.asset('lib/images/Rectangle 11.png')),
                    Positioned(
                        right: MediaQuery.of(context).size.width * 0.15,
                        top: MediaQuery.of(context).size.height * 0.19,
                        child: SvgPicture.asset('lib/images/Group 7.svg')),
                    Positioned(
                        left: MediaQuery.of(context).size.width * 0.03,
                        top: MediaQuery.of(context).size.height * 0.53,
                        child: Text(
                          "Be a InstaPick Partner",
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'IstokWeb',
                              fontWeight: FontWeight.bold),
                        )),
                    Positioned(
                        left: MediaQuery.of(context).size.width * 0.03,
                        top: MediaQuery.of(context).size.height * 0.57,
                        child: Container(
                          width: 400,
                          child: Text(
                            "Get a stable monthly income",
                            style: TextStyle(
                                fontFamily: 'RadioCanada',
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          ),
                        ))
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, top: 20),
                      child: Text("Enter Mobile Number",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'RadioCanada',
                          )),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: const EdgeInsets.only(left: 15, top: 20),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "e.g. 9999988888"),
                            ),
                          ),
                        )),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: const EdgeInsets.only(left: 8, top: 3),
                        child: Row(
                          children: [
                            Checkbox(value: false, onChanged: (bool? value) {}),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: Text.rich(TextSpan(
                                  text: 'By signing up I agree to the  ',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Terms of use',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFFFF5963),
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            // code to open / launch terms of service link here
                                          }),
                                    TextSpan(
                                        text: ' and ',
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.black),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: 'Privacy Policy',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Color(0xFFFF5963),
                                                  decoration:
                                                      TextDecoration.underline),
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () {
                                                  // code to open / launch privacy policy link here
                                                })
                                        ])
                                  ])),
                            )
                          ],
                        )),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => otpScreen()));
                      },
                      child: SvgPicture.asset('lib/images/Group 1830.svg'))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
