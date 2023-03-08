import 'package:flutter/material.dart';

import 'data/card_data.dart';
import 'model/card_model.dart';

class MyCard extends StatelessWidget {
  final int id;

  const MyCard({required this.id, super.key});

  @override
  Widget build(BuildContext context) {
    final String name = "assets/images/${card_images[id]}";
    const String cardBack = "assets/images/card_back";

    var image = Image.asset(cardBack, fit: BoxFit.fill);
    return Container(
        decoration: BoxDecoration(border: Border.all(width: 2)), child: image);
  }
}
