import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors.dart';

class BarLink extends StatelessWidget {
  final String title;
  final IconData icon;
  final String route;

  const BarLink({required this.title, required this.icon, required this.route}) : super();


  @override
  Widget build(BuildContext context) {
    final modalRoute = ModalRoute.of(context);
    final currentRoute = modalRoute?.settings.name;
    var isActive = currentRoute == route;

    final navigator = Navigator.of(context);

    return ElevatedButton(
        onPressed: () {
          if(isActive) return;
          navigator.pushNamed(route);
        },
        style: ElevatedButton.styleFrom(
          primary: isActive ? Colors.white : Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60.0),
          ),
        ),
        child: SizedBox(
          height: 60,
          child: Wrap(
            direction: Axis.vertical,
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Icon(icon, color: isActive ? CHColors.primaryColor : Colors.white),
              const SizedBox(width: 20),
              Text(title, style: GoogleFonts.inter(fontSize: 8, color: isActive ? CHColors.primaryColor : Colors.white, fontWeight: FontWeight.w400)),
            ],
          ),
        )
    );
  }
}