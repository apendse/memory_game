import 'package:flutter/material.dart';



enum Suite {
  club,
  diamond,
  heart,
  spade,
}
enum CardStateEnum {
  faceDown,
  faceUpInPlay,
  faceUpNotInPlay
}
class CardState {
  final CardData cardData;
  CardStateEnum cardStateEnum;

  CardState(this.cardData, this.cardStateEnum);

}

class CardData {
  final Suite suite;
  final int value;
  final String imagePath;
  final String cardBackImagePath;
  CardData(this.suite, this.value, this.imagePath, this.cardBackImagePath);
}

