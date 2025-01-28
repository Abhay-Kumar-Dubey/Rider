import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DocumentSubmission extends StatefulWidget {
  const DocumentSubmission({super.key});

  @override
  State<DocumentSubmission> createState() => _DocumentSubmissionState();
}

class _DocumentSubmissionState extends State<DocumentSubmission> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              SvgPicture.asset(
                'lib/images/Rectangle.svg',
                width: MediaQuery.of(context).size.width,
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.08,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 27.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Column(
                      children: [
                        Text(
                          'Welcome to Instapick',
                          style: GoogleFonts.quicksand(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            "Just a few steps to complete and then you can start earning with Us",
                            style: GoogleFonts.radioCanada(
                                fontSize: 16, color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Pending Documents",
                    style: GoogleFonts.istokWeb(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Card(
                    color: Colors.white,
                    child: Container(
                      height: 70,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Personal Documents",
                              style: GoogleFonts.istokWeb(fontSize: 20),
                            ),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    child: Container(
                      height: 70,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Vehicle Details",
                              style: GoogleFonts.istokWeb(fontSize: 20),
                            ),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    child: Container(
                      height: 70,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Bank Account Details",
                              style: GoogleFonts.istokWeb(fontSize: 20),
                            ),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    child: Container(
                      height: 70,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Emergency Details",
                              style: GoogleFonts.istokWeb(fontSize: 20),
                            ),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      "Completed Documnets",
                      style: GoogleFonts.istokWeb(
                          fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    child: Container(
                      height: 70,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.check),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Personal Information",
                                  style: GoogleFonts.istokWeb(fontSize: 20),
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                      ),
                    ),
                  ),
                ]),
          )
        ],
      ),
    );
  }
}
