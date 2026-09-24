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