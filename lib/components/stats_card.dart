import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors.dart';

class StatsCard extends StatelessWidget {

  const StatsCard({required this.session, required this.matches, required this.goals, required this.wins, required this.losses});

  final String session;
  final int matches;
  final int goals;
  final int wins;
  final int losses;

  @override
  Widget build(BuildContext context) {
    return Wrap(
        spacing: 5,
        children: [
          FractionallySizedBox(
              widthFactor: 0.9,
              child: Card(
                  color: CHColors.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Sezóna $session", style: GoogleFonts.inter(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w500)),
                      ],
                      // Shape of the card
                    ),
                  )
              )
          ),
          FractionallySizedBox(
              widthFactor: 0.9,
              child: Card(
                  color: CHColors.tertiaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                        children: [
                          FractionallySizedBox(
                              widthFactor: 1,
                              child: Wrap(
                                alignment: WrapAlignment.spaceBetween,
                                children: [
                                  Text("Zápasy", style: GoogleFonts.inter(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400)),
                                  Text("$matches", style: GoogleFonts.inter(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400)),
                                ],
                              )
                          ),

                          FractionallySizedBox(
                              widthFactor: 1,
                              child: Wrap(
                                alignment: WrapAlignment.spaceBetween,
                                children: [
                                  Text("Góly", style: GoogleFonts.inter(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400)),
                                  Text("$goals", style: GoogleFonts.inter(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400)),
                                ],
                              )
                          ),

                          FractionallySizedBox(
                              widthFactor: 1,
                              child: Wrap(
                                alignment: WrapAlignment.spaceBetween,
                                children: [
                                  Text("Výhry", style: GoogleFonts.inter(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400)),
                                  Text("$wins", style: GoogleFonts.inter(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400)),
                                ],
                              )
                          ),

                          FractionallySizedBox(
                              widthFactor: 1,
                              child: Wrap(
                                alignment: WrapAlignment.spaceBetween,
                                children: [
                                  Text("Prehry", style: GoogleFonts.inter(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400)),
                                  Text("$losses", style: GoogleFonts.inter(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400)),
                                ],
                              )
                          ),
                        ]
                    ),
                  )
              )
          ),
        ]
    );
  }

}