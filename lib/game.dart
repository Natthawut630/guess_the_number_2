// ignore_for_file: avoid_print

import 'dart:math';

// enumeration
enum GuessResult { correct, tooHigh, tooLow }

enum GameEnd { endgame, playgame }
List<int> myList = [];
class Game {
  final int answer = Random().nextInt(100) + 1;
  int _totalGuesses = 0;


  // constructor
  Game() {
    print('Answer is $answer');
  }

  GuessResult doGuess(int guess) {
    _totalGuesses++;
    if (guess == answer) {
      addlist();
      return GuessResult.correct;
    } else if (guess > answer) {
      return GuessResult.tooHigh;
    } else {
      return GuessResult.tooLow;
    }
  }

  // getter
  int get totalGuesses {
    return _totalGuesses;
  }

  addlist() {
    myList.add(_totalGuesses);
    _totalGuesses = 0;
  }
  printList() {
    var countTwo = 1;
    var len = myList.length;
    for (var i = 0; i < len; i++) {
      print(" ➜ You've Played $len games");
      var llist = myList[i];
      print('🚀🚀🚀 Game #$countTwo: $llist Guesses 🚀🚀🚀');
      countTwo++;
    }
  }
  GameEnd? plsAgain(var str) {
    if (str == 'n' || str == 'N') {
      printList();
      return GameEnd.endgame;
    } else if (str == 'Y' || str == 'y') {
      return GameEnd.playgame;
    }
  }
}
