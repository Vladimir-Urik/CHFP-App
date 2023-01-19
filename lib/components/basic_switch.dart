import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors.dart';

class BasicSwitch extends StatelessWidget {
  const BasicSwitch({required this.text, required this.onPressed, this.active = false});

  final String text;
  final VoidCallback? onPressed;
  final bool active;

  @override
  Widget build(BuildContext context) {

    var color = active ? Colors.white : Colors.grey[600];
    var primaryColor = active ? CHColors.primaryColor : CHColors.secondaryColor;

    return ElevatedButton(
      onPressed: () {
        onPressed?.call();
      },
      style: ElevatedButton.styleFrom(
        primary: primaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        textStyle: GoogleFonts.inter(fontSize: 15, color: color, fontWeight: FontWeight.w400),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
      child: Text(text, style: GoogleFonts.inter(fontSize: 15, color: color, fontWeight: FontWeight.w400)),
    );
  }
}