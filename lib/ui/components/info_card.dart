import 'package:flutter/material.dart';
import 'package:motoon_api_example/models/card_info.dart';

class InfoCardComponent extends StatelessWidget {
  final CardInfo cardInfo;
  InfoCardComponent({required this.cardInfo});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (cardInfo.onCardClick != null) {
          cardInfo.onCardClick!(cardInfo);
        }
      },
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              cardInfo.image,
              width: 75,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              cardInfo.title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              cardInfo.subtitle,
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
