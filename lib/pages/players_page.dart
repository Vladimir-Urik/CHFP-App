import 'package:CHFP/colors.dart';
import 'package:CHFP/components/basic_switch.dart';
import 'package:CHFP/components/navigation_bar.dart';
import 'package:CHFP/components/player.dart';
import 'package:CHFP/enums/overview_section.dart';
import 'package:CHFP/enums/profile_section.dart';
import 'package:CHFP/pages/sections/overview_articles_section.dart';
import 'package:CHFP/pages/sections/overview_next_matches_section.dart';
import 'package:CHFP/pages/sections/profile_matches_section.dart';
import 'package:CHFP/pages/sections/profile_stats_section.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlayersPage extends StatefulWidget {
  const PlayersPage({Key? key}) : super(key: key);

  @override
  State<PlayersPage> createState() => _PlayersPageState();
}

class _PlayersPageState extends State<PlayersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CHNavigationBar(),
      body: FractionallySizedBox(
        widthFactor: 1,
        child: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
              child: Column (
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Hráči týmu", style: GoogleFonts.inter(fontSize: 25, fontWeight: FontWeight.w600)),
                      Text("FBS Olomouc", style: GoogleFonts.inter(fontSize: 15, color: CHColors.primaryColor, fontWeight: FontWeight.w400)),
                    ],
                  ),
                  const SizedBox(height: 40),
                  FractionallySizedBox(
                    widthFactor: 0.9,
                    child: Wrap(
                      direction: Axis.horizontal,
                      spacing: 15,
                      children: const [
                        Player(name: "Vladimír Urík", pfp: "https://i.imgur.com/rhXxjqI.png"),
                        Player(name: "Vladimír Urík", pfp: "https://i.imgur.com/rhXxjqI.png"),
                        Player(name: "Vladimír Urík", pfp: "https://i.imgur.com/rhXxjqI.png"),
                        Player(name: "Vladimír Urík", pfp: "https://i.imgur.com/rhXxjqI.png"),
                        Player(name: "Vladimír Urík", pfp: "https://i.imgur.com/rhXxjqI.png"),
                        Player(name: "Vladimír Urík", pfp: "https://i.imgur.com/rhXxjqI.png"),
                        Player(name: "Vladimír Urík", pfp: "https://i.imgur.com/rhXxjqI.png"),
                        Player(name: "Vladimír Urík", pfp: "https://i.imgur.com/rhXxjqI.png"),
                        Player(name: "Vladimír Urík", pfp: "https://i.imgur.com/rhXxjqI.png"),
                        Player(name: "Vladimír Urík", pfp: "https://i.imgur.com/rhXxjqI.png"),
                        Player(name: "Vladimír Urík", pfp: "https://i.imgur.com/rhXxjqI.png"),
                        Player(name: "Vladimír Urík", pfp: "https://i.imgur.com/rhXxjqI.png"),
                        Player(name: "Vladimír Urík", pfp: "https://i.imgur.com/rhXxjqI.png"),
                        Player(name: "Vladimír Urík", pfp: "https://i.imgur.com/rhXxjqI.png"),
                        Player(name: "Vladimír Urík", pfp: "https://i.imgur.com/rhXxjqI.png"),
                        Player(name: "Vladimír Urík", pfp: "https://i.imgur.com/rhXxjqI.png"),
                      ]
                    ),
                  )
                ],
              ),
          ),
        ),
      )
    );
  }
}
