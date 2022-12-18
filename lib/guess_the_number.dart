// ignore_for_file: avoid_print

import 'dart:io';

import 'game.dart';

void main() {
  var game;
  late GuessResult guessResult;
  var guessTwo;
  var endgame;
  do {
    game = Game();
    print('╔══════════════════════════════════════════════════');
    print('║              GUESS THE NUMBER 2/2565             ');
    print('║──────────────────────────────────────────────────');

    do {
      stdout.write('║  Guess the number between 1 and 100 : ');
      var input = stdin.readLineSync();
      if (input == null) {
        //print('Error, input is NULL');
        return;
      }

      var guess = int.tryParse(input);

      if (guess == null) {
        //print('Input error, please enter numbers only');
        continue;
      }
      guessResult = game.doGuess(guess);
      if (guessResult == GuessResult.correct) {
        print('║  ➜ $guess is CORRECT ❤, total guesses: ${game.totalGuesses}');
        print('║──────────────────────────────────────────────────');
        print('║                    THE END                       ');
        print('╚══════════════════════════════════════════════════');
      } else if (guessResult == GuessResult.tooHigh) {
        print('║  ➜ $guess is TOO HIGH! ▲');
        print('║──────────────────────────────────────────────────');
      } else {
        print('║  ➜ $guess is TOO LOW! ▼');
        print('║──────────────────────────────────────────────────');
      }
    } while (guessResult != GuessResult.correct);
    do {
      stdout.write(' Play Again (Y/N) : ');
      var inputTwo = stdin.readLineSync();
      if (inputTwo == null) {
        return;
      }
      //print('inputTwo = $inputTwo');
      guessTwo = inputTwo;
      //print('$guessTwo');
      if (guessTwo == null) {
        continue;
      }
      endgame = game.plsAgain(guessTwo);
      if (endgame == GameEnd.playgame) {
        //print ('playNext2');
        continue;
      }else if (endgame == GameEnd.endgame){
        //print('$endgame');
        break;
      }
    } while (endgame != GameEnd.playgame);

  } while (endgame != GameEnd.endgame);
}
