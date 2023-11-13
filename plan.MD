### Task 1: Extract Nouns for Classes
Player
Game
Question


### Task 2: Write their roles
Player Class:
Role: Represents a player in the game.
State:
Lives (integer)
Behavior:
initialize: Set initial number of lives.
lose_life: Decrease the number of lives.
is_alive: Check if the player has lives remaining.


Game Class:
Role: Manages the overall game.
State:
Players (an array of Player objects)
Current Player (a reference to the current Player object)
Behavior:
initialize: Set up the game with players.
new_turn: Generate a new math question for the current player.
check_answer: Validate the answer and update player lives accordingly.
switch_player: Change the current player for the next turn.
game_over: Determine if the game is over.
display_scores: Output the scores of both players.


Question Class:
Role: Represents a math question.
State:
Two numbers (randomly generated)
Correct Answer
Behavior:
initialize: Generate two random numbers and calculate the correct answer.
check_answer: Compare the player's answer with the correct answer.
Additional Considerations:
Game Loop Class:
The Game class will contain the game loop, where each iteration represents a turn.
Current Player Management:
The Game class will manage who the current player is, switching between players after each turn.
User I/O:
The Game class will handle user input/output, prompting players with questions and displaying scores.
The Player and Question classes will not have any direct user input/output.