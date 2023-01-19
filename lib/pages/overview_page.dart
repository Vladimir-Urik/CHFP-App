import 'package:CHFP/colors.dart';
import 'package:CHFP/components/basic_switch.dart';
import 'package:CHFP/components/navigation_bar.dart';
import 'package:CHFP/enums/overview_section.dart';
import 'package:CHFP/enums/profile_section.dart';
import 'package:CHFP/pages/sections/overview_articles_section.dart';
import 'package:CHFP/pages/sections/overview_next_matches_section.dart';
import 'package:CHFP/pages/sections/profile_matches_section.dart';
import 'package:CHFP/pages/sections/profile_stats_section.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OverviewPage extends StatefulWidget {
  const OverviewPage({Key? key}) : super(key: key);

  @override
  State<OverviewPage> createState() => _OverviewPageState();
}

class _OverviewPageState extends State<OverviewPage> {
  OverviewSection _currentSection = OverviewSection.articles;

  void _changeSection(OverviewSection section) {
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Nástenka týmu", style: GoogleFonts.inter(fontSize: 25, fontWeight: FontWeight.w600)),
                      Text("FBS Olomouc", style: GoogleFonts.inter(fontSize: 15, color: CHColors.primaryColor, fontWeight: FontWeight.w400)),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 15,
                    children: [
                      BasicSwitch(text: "Príspevky", onPressed: () {
                        _changeSection(OverviewSection.articles);
                      }, active: _currentSection == OverviewSection.articles),
                      BasicSwitch(text: "Budúce zápasy", onPressed: () {
                        _changeSection(OverviewSection.nextMatches);
                      }, active: _currentSection == OverviewSection.nextMatches),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  _currentSection == OverviewSection.articles ? const OverviewArticlesSection() : const OverviewNextMatchesSection(),
                ],
              )
          ),
        ),
      )
    );
  }
}
