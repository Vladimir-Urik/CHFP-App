import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors.dart';

class Player extends StatelessWidget {

  final String name;
  final String pfp;

  const Player({required this.name, required this.pfp});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: Card(
          color: CHColors.tertiaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(pfp),
                  radius: 20,
                ),
                const SizedBox(width: 10),
                Text(name, style: GoogleFonts.inter(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400)),
              ],
              // Shape of the card
            ),
          )
      )
    );
  }

}