import 'dart:io';

String getPlayerName(String playerNumber) {
  stdout.write("Enter $playerNumber name: ");
  String? input = stdin.readLineSync();

  if (input == null || input.trim().isEmpty) {
    print('(No name entered. Using "$playerNumber".)');
    return playerNumber;
  }

  return input.trim();
}

void main() {
  print("===== ROCK, PAPER, SCISSORS =====");

  String player1 = getPlayerName("Player 1");
  String player2 = getPlayerName("Player 2");

  print("\n--- Round 1 ---");

  stdout.write("$player1, enter your move (rock/paper/scissors): ");
  String? player1Move = stdin.readLineSync();

  for (int i = 0; i < 30; i++) {
    print("");
  }

  stdout.write("$player2, enter your move (rock/paper/scissors): ");
  String? player2Move = stdin.readLineSync();

  print("$player1 chose ${player1Move ?? ""}. "
      "$player2 chose ${player2Move ?? ""}.");
}

String? validateMove(String input) {
  List<String> moves = ['rock', 'paper', 'scissors'];

  String move = input.trim().toLowerCase();

  if (moves.contains(move)) {
    return move;
  }

  return null;
}

String getMove(String playerName) {
  while (true) {
    stdout.write(
        "$playerName, enter your move (rock/paper/scissors): ");

    String? input = stdin.readLineSync();

    String? move = validateMove(input ?? "");

    if (move != null) {
      return move;
    }

    print("Invalid move. Please type rock, paper, or scissors.");
  }
}

/// Decides the winner of the round.
String? decideWinner(String player1Move, String player2Move) {
  if (player1Move == player2Move) {
    return null;
  }

  if ((player1Move == "rock" && player2Move == "scissors") ||
      (player1Move == "paper" && player2Move == "rock") ||
      (player1Move == "scissors" && player2Move == "paper")) {
    return "Player 1";
  }

  return "Player 2";
}