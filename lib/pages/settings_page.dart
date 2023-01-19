import 'package:CHFP/colors.dart';
import 'package:CHFP/components/basic_switch.dart';
import 'package:CHFP/components/navigation_bar.dart';
import 'package:CHFP/components/player.dart';
import 'package:CHFP/components/settings_button.dart';
import 'package:CHFP/enums/overview_section.dart';
import 'package:CHFP/enums/profile_section.dart';
import 'package:CHFP/pages/sections/overview_articles_section.dart';
import 'package:CHFP/pages/sections/overview_next_matches_section.dart';
import 'package:CHFP/pages/sections/profile_matches_section.dart';
import 'package:CHFP/pages/sections/profile_stats_section.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    var navigator = Navigator.of(context);

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
                      Text("Nastaveni", style: GoogleFonts.inter(fontSize: 25, fontWeight: FontWeight.w600)),
                    ],
                  ),
                  const SizedBox(height: 40),
                  FractionallySizedBox(
                    widthFactor: 1,
                    child: Column(
                        children: [
                          Wrap(
                            children: [
                              Text(
                                "účet".toUpperCase(),
                                style: GoogleFonts.inter(fontSize: 15, fontWeight: FontWeight.w600, color: CHColors.primaryColor),
                              ),

                              Wrap(
                                  direction: Axis.horizontal,
                                  spacing: 5,
                                  children: const [
                                    SettingsButton(title: "Informace"),
                                    SettingsButton(title: "Odhlásiť sa")
                                  ]
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          Wrap(
                            children: [
                              Text(
                                "zabezpečenie".toUpperCase(),
                                style: GoogleFonts.inter(fontSize: 15, fontWeight: FontWeight.w600, color: CHColors.primaryColor),
                              ),

                              Wrap(
                                  direction: Axis.horizontal,
                                  spacing: 5,
                                  children: const [
                                    SettingsButton(title: "Zmenit heslo"),
                                    SettingsButton(title: "Zmenit email"),
                                  ]
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          Wrap(
                            children: [
                              Text(
                                "Právne veci".toUpperCase(),
                                style: GoogleFonts.inter(fontSize: 15, fontWeight: FontWeight.w600, color: CHColors.primaryColor),
                              ),

                              Wrap(
                                  direction: Axis.horizontal,
                                  spacing: 5,
                                  children: const [
                                    SettingsButton(title: "GDPR")
                                  ]
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          Wrap(
                            children: [
                              Text(
                                "Administrace".toUpperCase(),
                                style: GoogleFonts.inter(fontSize: 15, fontWeight: FontWeight.w600, color: CHColors.primaryColor),
                              ),

                              Wrap(
                                  direction: Axis.horizontal,
                                  spacing: 5,
                                  children: [
                                    SettingsButton(title: "Spravovať príspevky", onPressed: () {
                                      navigator.pushNamed("/admin/articles");
                                    }),
                                    SettingsButton(title: "Spravovať uživatele", onPressed: () {
                                      navigator.pushNamed("/admin/users");
                                    }),
                                    SettingsButton(title: "Spravovať zápasy"),
                                  ]
                              ),
                            ],
                          )
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
