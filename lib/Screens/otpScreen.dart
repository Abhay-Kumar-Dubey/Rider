import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rider/Screens/personal_detail.dart';

class otpScreen extends StatelessWidget {
  const otpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String? PhoneNo;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text('Enter OTP to verify',
                  style: GoogleFonts.radioCanada(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.95,
                child: Text.rich(
                  TextSpan(
                      text:
                          "A 6 digit OTP has been sent to your phone number +91$PhoneNo  ",
                      style: TextStyle(fontSize: 15, fontFamily: 'RadioCanada'),
                      children: [
                        TextSpan(
                            text: 'change',
                            style: TextStyle(
                              color: Color(0xFFFF5963),
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () {})
                      ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "Enter OTP Text",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'IstokWeb',
                ),
              ),
            ),
            OtpTextField(
              numberOfFields: 6,
              fieldWidth: 40,
              showFieldAsBox: true,
              enabledBorderColor: Colors.green,
              margin: EdgeInsets.symmetric(horizontal: 8),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PersonalDetail()));
                  },
                  child: SvgPicture.asset('lib/images/Group 1830-2.svg')),
            )
          ],
        ),
      ),
    );
  }
}
