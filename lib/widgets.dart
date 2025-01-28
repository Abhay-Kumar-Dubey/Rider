import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputCard extends StatelessWidget {
  final String FieldName;
  final String HintText;
  final bool SuffixIcon;
  final IconData? SuffixIconValue;
  const InputCard(
      {required this.FieldName,
      required this.HintText,
      required this.SuffixIcon,
      this.SuffixIconValue});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              FieldName,
              style: GoogleFonts.istokWeb(
                  fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 10),
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
                        suffixIcon: SuffixIcon == true
                            ? Icon(
                                SuffixIconValue,
                                color: Color(0xFFFF5963),
                              )
                            : null,
                        border: InputBorder.none,
                        hintText: HintText),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
