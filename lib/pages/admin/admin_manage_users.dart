import 'package:CHFP/components/admin_article_link.dart';
import 'package:CHFP/components/admin_user_link.dart';
import 'package:CHFP/enums/user_rank.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../colors.dart';
import '../../components/navigation_bar.dart';
import '../../components/player.dart';

class AdminManageUsersPage extends StatefulWidget {
  const AdminManageUsersPage({Key? key}) : super(key: key);

  @override
  _AdminManageUsersPageState createState() => _AdminManageUsersPageState();
}

class _AdminManageUsersPageState extends State<AdminManageUsersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed("/admin/article/new");
        },
        backgroundColor: CHColors.primaryColor,
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        iconTheme: const IconThemeData(color: CHColors.primaryColor),
      ),
        body: FractionallySizedBox(
          widthFactor: 1,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: Column (
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Uživateľia", style: GoogleFonts.inter(fontSize: 25, fontWeight: FontWeight.w600)),
                      Text("FBS Olomouc", style: GoogleFonts.inter(fontSize: 15, color: CHColors.primaryColor, fontWeight: FontWeight.w400)),
                    ],
                  ),
                  const SizedBox(height: 40),
                  FractionallySizedBox(
                    widthFactor: 1,
                    child: Wrap(
                        direction: Axis.horizontal,
                        children: const [
                          AdminUserLink(name: "Vladimír Urík", pfp: "https://i.imgur.com/rhXxjqI.png", id: 1, rank: UserRank.trainer),
                          SizedBox(height: 15),
                          AdminUserLink(name: "Vladimír Urík", pfp: "https://i.imgur.com/rhXxjqI.png", id: 1, rank: UserRank.player),
                          SizedBox(height: 15),
                          AdminUserLink(name: "Vladimír Urík", pfp: "https://i.imgur.com/rhXxjqI.png", id: 1, rank: UserRank.player),
                          SizedBox(height: 15),
                          AdminUserLink(name: "Vladimír Urík", pfp: "https://i.imgur.com/rhXxjqI.png", id: 1, rank: UserRank.player),
                          SizedBox(height: 15),
                          AdminUserLink(name: "Vladimír Urík", pfp: "https://i.imgur.com/rhXxjqI.png", id: 1, rank: UserRank.player),
                          SizedBox(height: 15),
                          AdminUserLink(name: "Vladimír Urík", pfp: "https://i.imgur.com/rhXxjqI.png", id: 1, rank: UserRank.player),
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