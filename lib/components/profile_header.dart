import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors.dart';

class ProfileHeader extends StatelessWidget {

  final String pfp;
  final String name;
  final String team;

  const ProfileHeader({required this.pfp, required this.name, required this.team});

  @override
  Widget build(BuildContext context) {
    return Wrap(spacing: 15, children: [
      CircleAvatar(
        backgroundImage: NetworkImage(pfp),
        radius: 70,
      ),
      SizedBox(
        height: 140,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name, style: GoogleFonts.inter(fontSize: 25, fontWeight: FontWeight.w600)),
            Padding(padding: const EdgeInsets.only(left: 10), child: Text(team, style: GoogleFonts.inter(fontSize: 15, color: CHColors.primaryColor, fontWeight: FontWeight.w400))),
          ],
        ),
      ),
    ]);
  }
}