import 'package:CHFP/pages/admin/admin_manage_articles.dart';
import 'package:CHFP/pages/admin/admin_manage_users.dart';
import 'package:CHFP/pages/overview_page.dart';
import 'package:CHFP/pages/profile_page.dart';
import 'package:CHFP/pages/players_page.dart';
import 'package:CHFP/pages/settings_page.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CHFP',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        shadowColor: Colors.transparent,
      ),
      home: const ProfilePage(),
      routes: {
        '/overview': (context) => const OverviewPage(),
        '/players': (context) => const PlayersPage(),
        '/settings': (context) => const SettingsPage(),

        '/admin/articles': (context) => const AdminManageArticlesPage(),

        '/admin/users': (context) => const AdminManageUsersPage(),
      },
      locale: const Locale('sk', 'SK'),
    );
  }
}