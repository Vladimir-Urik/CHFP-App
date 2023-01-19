import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors.dart';

class SettingsButton extends StatelessWidget {

  final String title;
  final VoidCallback? onPressed;

  const SettingsButton({required this.title, this.onPressed });

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        color: CHColors.tertiaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        onPressed: () {
          if (onPressed != null) {
            onPressed!();
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(title, style: GoogleFonts.inter(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400)),
            ],
            // Shape of the card
          ),
        )
    );
  }
}