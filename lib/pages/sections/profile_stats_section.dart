import 'package:CHFP/components/stats_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileStatsSection extends StatelessWidget {
  const ProfileStatsSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        StatsCard(session: "2022/2023", matches: 1, goals: 1, wins: 0, losses: 1),
        SizedBox(
          height: 15,
        ),
        StatsCard(session: "2021/2022", matches: 1, goals: 3, wins: 1, losses: 0)
      ],
    );
  }
}