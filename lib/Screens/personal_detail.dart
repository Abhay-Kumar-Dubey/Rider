import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rider/Screens/document_submission.dart';
import 'package:rider/widgets.dart';

class PersonalDetail extends StatefulWidget {
  const PersonalDetail({super.key});

  @override
  State<PersonalDetail> createState() => _PersonalDetailState();
}

String dropdownValue = '';

class _PersonalDetailState extends State<PersonalDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 9.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Personal information",
                      style: GoogleFonts.poppins(
                          fontSize: 22, fontWeight: FontWeight.w600),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        "Enter the details below so we can get to know and serve you better",
                        style: GoogleFonts.radioCanada(fontSize: 16),
                      ),
                    ),
                    InputCard(
                      FieldName: "FirstName",
                      HintText: "Please enter first name",
                      SuffixIcon: false,
                    ),
                    InputCard(
                      FieldName: "Last Name",
                      HintText: "Please enter last name",
                      SuffixIcon: false,
                    ),
                    InputCard(
                      FieldName: "Father's Name",
                      HintText: "Please enter father's name",
                      SuffixIcon: false,
                    ),
                    InputCard(
                      FieldName: "Date of birth",
                      HintText: "dd-mm-yyy",
                      SuffixIcon: true,
                      SuffixIconValue: Icons.calendar_month,
                    ),
                    InputCard(
                      FieldName: "Primary mobile number",
                      HintText: "+91 9999998880",
                      SuffixIcon: false,
                    ),
                    InputCard(
                      FieldName: "City",
                      HintText: "e.g. Banglore",
                      SuffixIcon: false,
                    ),
                    InputCard(
                      FieldName: "Enter Complete address here",
                      HintText: "Search address",
                      SuffixIcon: false,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          "Languages you know",
                          style: GoogleFonts.istokWeb(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Center(
                            child: DropdownButton(
                                iconSize: 40,
                                hint: Text("Search one or multiple"),
                                value:
                                    dropdownValue == '' ? null : dropdownValue,
                                items: [
                                  DropdownMenuItem<String>(
                                    value: 'Hindi',
                                    child: Text("Hindi"),
                                  ),
                                  DropdownMenuItem<String>(
                                    value: 'English',
                                    child: Text("English"),
                                  ),
                                  DropdownMenuItem<String>(
                                    value: 'Marathi',
                                    child: Text("Marathi"),
                                  ),
                                  DropdownMenuItem<String>(
                                    value: 'Bhojpuri',
                                    child: Text("Bhojpuri"),
                                  )
                                ],
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue = newValue!;
                                  });
                                }),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        "Your Profile Picture",
                        style: GoogleFonts.istokWeb(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.person,
                                  size: 80,
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: SvgPicture.asset(
                                        'lib/images/Group 1859.svg'))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    InputCard(
                      FieldName: "Referral code(optional)",
                      HintText: "Enter referral code",
                      SuffixIcon: false,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        DocumentSubmission()));
                          },
                          child:
                              SvgPicture.asset('lib/images/Submit button.svg')),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
