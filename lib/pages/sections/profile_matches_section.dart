import 'package:CHFP/components/match_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileMatchesSection extends StatelessWidget {
  const ProfileMatchesSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        MatchCard(title: "PLAYOFF", year: "2022", date: "30. 11. 2022", time: "15:00", homeTeam: "https://i.imgur.com/YytLgnh.png", awayTeam: "https://i.imgur.com/JhMKjmu.png", homeScore: 2, awayScore: 5),
        SizedBox(
          height: 15,
        ),
        MatchCard(title: "PLAYOFF", year: "2021", date: "30. 11. 2021", time: "18:00", homeTeam: "https://i.imgur.com/YytLgnh.png", awayTeam: "https://i.imgur.com/JhMKjmu.png", homeScore: 9, awayScore: 3),
      ],
    );
  }
}