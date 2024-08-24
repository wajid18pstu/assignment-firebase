import 'package:firebase/football.dart';
import 'package:flutter/material.dart';

class FootballScoreCard extends StatelessWidget {
  const FootballScoreCard({
    super.key,
    required this.football,
  });

  final Football football;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildIndividualTeamData(football.team1Name, football.team1Score),
            const Text('vs'),
            buildIndividualTeamData(football.team2Name, football.team2Score),
          ],
        ),
      ),
    );
  }

  Widget buildIndividualTeamData(String teamName, int score) {
    return Column(
      children: [
        Text(
          score.toString(),
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        Text(
          teamName,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
