void main() {
  var deck = new Deck();
  deck.shuffle();
  print(deck.cardsWithSuit('Diamonds'));
}

class Deck {
  List<Card> cards = []; // this is type List which is an array in Dart and should contain only instances of Card

  Deck() {
    var ranks = ['Ace', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine', 'Ten', 'Jack', 'Queen', 'King'];
    var suits = ['Diamonds', 'Hearts', 'Clubs', 'Spades'];

    for (var suit in suits) {
      for (var rank in ranks) {
        var card = new Card(suit, rank);
        cards.add(card);
      }
    }
  }

 toString() {
    return cards.toString();
  }

  shuffle() {
    cards.shuffle();
  }

  cardsWithSuit(String suit) {
    return cards.where((card) {
      return card.suit == suit;
    });
  }
}

class Card {
  String suit;
  String rank;  

  Card(this.suit, this.rank); // function constructor shorthand

  toString() {
    return '$rank of $suit';
  }
}
