import 'package:CHFP/enums/user_rank.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors.dart';

class AdminUserLink extends StatelessWidget {

  final String pfp;
  final String name;
  final UserRank rank;
  final int id;

  const AdminUserLink({required this.pfp, required this.name, required this.rank, required this.id});

  @override
  Widget build(BuildContext context) {
    var navigator = Navigator.of(context);

    var rankColor = CHColors.primaryColor;
    switch (rank) {
      case UserRank.trainer:
        rankColor = CHColors.trainerRankColor;
        break;

      case UserRank.player:
        rankColor = CHColors.playerRankColor;
        break;
    }

    var rankString = rank.name.substring(0, 1).toUpperCase() + rank.name.substring(1);

    return RaisedButton(
        color: CHColors.tertiaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        onPressed: () {
          navigator.pushNamed("/admin/user/$id");
        },
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(pfp),
                radius: 30,
              ),
              SizedBox(width: 10),
              SizedBox(
                height: 60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w600)),
                    Padding(padding: const EdgeInsets.only(left: 5), child: Text(rankString, style: GoogleFonts.inter(fontSize: 15, color: rankColor, fontWeight: FontWeight.w800))),
                  ],
                ),
              ),
            ],
            // Shape of the card
          ),
        )
    );
  }
}