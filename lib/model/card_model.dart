import 'package:flutter/cupertino.dart';

import '../data/card_data.dart';
const int cardCount = 52;
var card_images = [
  "10_of_clubs.png",
  "10_of_diamonds.png",
  "10_of_hearts.png",
  "10_of_spades.png",
  "2_of_clubs.png",
  "2_of_diamonds.png",
  "2_of_hearts.png",
  "2_of_spades.png",
  "3_of_clubs.png",
  "3_of_diamonds.png",
  "3_of_hearts.png",
  "3_of_spades.png",
  "4_of_clubs.png",
  "4_of_diamonds.png",
  "4_of_hearts.png",
  "4_of_spades.png",
  "5_of_clubs.png",
  "5_of_diamonds.png",
  "5_of_hearts.png",
  "5_of_spades.png",
  "6_of_clubs.png",
  "6_of_diamonds.png",
  "6_of_hearts.png",
  "6_of_spades.png",
  "7_of_clubs.png",
  "7_of_diamonds.png",
  "7_of_hearts.png",
  "7_of_spades.png",
  "8_of_clubs.png",
  "8_of_diamonds.png",
  "8_of_hearts.png",
  "8_of_spades.png",
  "9_of_clubs.png",
  "9_of_diamonds.png",
  "9_of_hearts.png",
  "9_of_spades.png",
  "ace_of_clubs.png",
  "ace_of_diamonds.png",
  "ace_of_hearts.png",
  "ace_of_spades.png",
  "jack_of_clubs2.png",
  "jack_of_diamonds2.png",
  "jack_of_hearts2.png",
  "jack_of_spades2.png",
  "king_of_clubs2.png",
  "king_of_diamonds2.png",
  "king_of_hearts2.png",
  "king_of_spades2.png",
  "queen_of_clubs2.png",
  "queen_of_diamonds2.png",
  "queen_of_hearts2.png",
  "queen_of_spades2.png",
];
final listOfCardsValue = [10, 2, 3, 4, 5, 6, 7, 8, 9, 1, 11, 12, 13];
enum GameState {
  noCardsTurned,
  oneCardTurned,
  twoCardsTurned
}
class CardModel extends ChangeNotifier {
  final List<CardState> _cards = [];

  CardModel() {
    for (var i = 0; i < cardCount; i++) {
      Suite suite = Suite.values[i % 4];
      CardData cardData = CardData(suite, listOfCardsValue[i ~/ 4],  "assets/images/card_images[i]", "assets/images/card_back.png");
      CardState cardState = CardState(cardData, CardStateEnum.faceDown);
      _cards.add(cardState);
    }
  }

  void flipCard(int index) {
      CardState cardState = _cards[index];
      if (cardState.cardStateEnum == CardStateEnum.faceDown) {
        cardState.cardStateEnum = CardStateEnum.faceUpInPlay;
      } else if (cardState.cardStateEnum == CardStateEnum.faceUpInPlay) {
        cardState.cardStateEnum = CardStateEnum.faceDown;
      }
  }
}