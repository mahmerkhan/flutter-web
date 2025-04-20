import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionText extends StatelessWidget {
  final String text;
  const SectionText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: GoogleFonts.inter(fontSize: 16, color: Colors.grey));
  }
}