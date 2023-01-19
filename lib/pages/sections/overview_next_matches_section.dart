import 'package:CHFP/components/match_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OverviewNextMatchesSection extends StatelessWidget {
  const OverviewNextMatchesSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        MatchCard(title: "Pražský Pohár", year: "2022", date: "23. 12. 2022", time: "15:00", homeTeam: "https://i.imgur.com/YytLgnh.png", awayTeam: "https://i.imgur.com/JhMKjmu.png", nextMatch: true),
        SizedBox(
          height: 15,
        ),
        MatchCard(title: "Pohár klubu", year: "2022", date: "25. 12. 2021", time: "18:00", homeTeam: "https://i.imgur.com/YytLgnh.png", awayTeam: "https://i.imgur.com/JhMKjmu.png", nextMatch: true),
      ],
    );
  }
}