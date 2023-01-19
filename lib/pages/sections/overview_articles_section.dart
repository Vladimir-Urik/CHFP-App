import 'package:CHFP/components/article_card.dart';
import 'package:CHFP/components/match_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OverviewArticlesSection extends StatelessWidget {
  const OverviewArticlesSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ArticleCard(title: "Zmena času tréningov", text: "Od 12. 12. 2022 sa zmení čas tréningov nasledovne:-> Pondelok (13:00 -> 16:00)-> Streda (15:00 -> 18:00)-> Piatok (14:00 -> 19:00)", authorImage: "https://i.imgur.com/rhXxjqI.png", authorName: "Vladimír Urík", date: "1. 12. 2022 9:47"),
        SizedBox(
          height: 15,
        ),
        ArticleCard(title: "Nové dresy", text: "V pondelok si môžete všeci vyzdvihnút nové dresynášho klubu. Zmenili sme farbu o jeden odstien.Dúfame že sa vám budu páčiť.", authorImage: "https://i.imgur.com/rhXxjqI.png", authorName: "Vladimír Urík", date: "30. 11. 2022 11:03"),
      ],
    );
  }
}