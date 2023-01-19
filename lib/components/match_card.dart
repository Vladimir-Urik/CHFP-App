import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors.dart';

class MatchCard extends StatelessWidget {

  const MatchCard({required this.title, required this.year, required this.date, required this.time, required this.homeTeam, required this.awayTeam, this.homeScore = 0, this.awayScore = 0, this.nextMatch = false});

  final String title;

  final String year;
  final String date;
  final String time;

  final String homeTeam;
  final String awayTeam;

  final int homeScore;
  final int awayScore;

  final bool nextMatch;

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
                        Text(nextMatch ? "$year - $title" : "Zápas $year - $title", style: GoogleFonts.inter(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w500)),
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
                                  Image(image: NetworkImage(homeTeam), width: 100, height: 100),
                                  SizedBox(
                                    height: 100,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(nextMatch ? "?-?" : "$homeScore-$awayScore", style: GoogleFonts.inter(fontSize: 25, fontWeight: FontWeight.w600, color: nextMatch ? Colors.grey[400] : Colors.black)),
                                        const SizedBox(height: 10),
                                        Text(date, style: GoogleFonts.inter(fontSize: 10, color: Colors.grey[600], fontWeight: FontWeight.w400)),
                                        Text(time, style: GoogleFonts.inter(fontSize: 10, color: Colors.grey[600], fontWeight: FontWeight.w400)),
                                      ],
                                    ),
                                  ),
                                  Image(image: NetworkImage(awayTeam), width: 100, height: 100),
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