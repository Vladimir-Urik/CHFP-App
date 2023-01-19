import 'package:CHFP/colors.dart';
import 'package:CHFP/components/basic_switch.dart';
import 'package:CHFP/components/navigation_bar.dart';
import 'package:CHFP/components/profile_header.dart';
import 'package:CHFP/enums/profile_section.dart';
import 'package:CHFP/pages/sections/profile_matches_section.dart';
import 'package:CHFP/pages/sections/profile_stats_section.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  ProfileSection _currentSection = ProfileSection.matches;

  void _changeSection(ProfileSection section) {
    setState(() {
      _currentSection = section;
    });
  }

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
                  const ProfileHeader(pfp: "https://i.imgur.com/rhXxjqI.png", name: "Vladimír Urík", team: "FBC Olomouc"),
                  const SizedBox(height: 40),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 15,
                    children: [
                      BasicSwitch(text: "Zápasy", onPressed: () {
                        _changeSection(ProfileSection.matches);
                      }, active: _currentSection == ProfileSection.matches),
                      BasicSwitch(text: "Statistiky", onPressed: () {
                        _changeSection(ProfileSection.stats);
                      }, active: _currentSection == ProfileSection.stats),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  _currentSection == ProfileSection.matches ? const ProfileMatchesSection() : const ProfileStatsSection(),
                ],
              )
          ),
        ),
      )
    );
  }
}
