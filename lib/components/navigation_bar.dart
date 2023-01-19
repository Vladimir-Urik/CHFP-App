import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors.dart';
import 'bar_link.dart';

class CHNavigationBar extends StatelessWidget {

  const CHNavigationBar();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      color: CHColors.primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          BarLink(
            title: 'Nástenka',
            icon: Icons.description,
            route: '/overview',
          ),
          BarLink(
            title: 'Profil',
            icon: Icons.person,
            route: '/',
          ),
          BarLink(
            title: 'Hráči',
            icon: Icons.people,
            route: '/players',
          ),
          BarLink(
            title: 'Nastavení',
            icon: Icons.settings,
            route: '/settings',
          ),
        ],
      ),
    );
  }
}