import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors.dart';

class ArticleCard extends StatelessWidget {

  const ArticleCard({required this.title, required this.text, required this.authorImage, required this.authorName, required this.date});

  final String title;
  final String text;

  final String authorImage;
  final String authorName;

  final String date;

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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title, style: GoogleFonts.inter(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w500)),
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
                              child: Text(text, style: GoogleFonts.inter(fontSize: 12, color: Colors.black, fontWeight: FontWeight.w400))
                          ),
                          const SizedBox(height: 20),
                          FractionallySizedBox(
                              widthFactor: 1,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Autor:", style: GoogleFonts.inter(fontSize: 11, color: Colors.grey[700], fontWeight: FontWeight.w300)),
                                        const SizedBox(height: 5),
                                        Row(
                                          children: [
                                            CircleAvatar(
                                              radius: 20,
                                              backgroundImage: NetworkImage(authorImage),
                                            ),
                                            const SizedBox(width: 5),
                                            Text(authorName, style: GoogleFonts.inter(fontSize: 13, color: Colors.black, fontWeight: FontWeight.w400)),
                                          ],
                                        )
                                      ],
                                    ),

                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Dátum:", style: GoogleFonts.inter(fontSize: 11, color: Colors.grey[700], fontWeight: FontWeight.w300)),
                                        const SizedBox(height: 5),
                                        Row(
                                          children: [
                                            const SizedBox(height: 40),
                                            Text(date, style: GoogleFonts.inter(fontSize: 13, color: Colors.black, fontWeight: FontWeight.w400)),
                                          ],
                                        )
                                      ],
                                    ),
                                  ]
                              )
                          )
                        ]
                    ),
                  )
              )
          ),
        ]
    );
  }

}