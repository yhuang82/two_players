class Game
  attr_reader :players, :turn

  def initialize
    @players = [Player.new, Player.new]
    @turn = 1
  end

  def new_turn
    UserInterface.display_message ("----- NEW TURN -----")
    question = Question.new
    UserInterface.display_message ("#{current_player_name}: #{question.display_question}")
    user_answer = UserInterface.get_user_input

    if question.check_answer(user_answer)
      UserInterface.display_message ("#{current_player_name}: YES! You are correct.")
    else
      current_player.lose_life
      UserInterface.display_message ("#{current_player_name}: Seriously? No!")
    end
    UserInterface.display_message(display_scores)
  end

  def display_scores
    "P1: #{players[1].display_score} vs P2: #{players[0].display_score}"
  end

  def game_over?
    players.any? {|player| !player.is_alive?}
  end

  def announce_winner
    winner = players.find {|player| player.is_alive?} 
    UserInterface.display_message("#{winner_name} wins with a score of #{winner.display_score}")
    UserInterface.display_message("-------GAME OVER -----")
    UserInterface.display_message("Goodbye!")
  end

  def start
    until game_over?
      new_turn
      @turn += 1
    end
    announce_winner
  end







    private
    def current_player_name
      @turn % 2 == 1 ? "Player 1" : "Player 2"
    end

    def current_player
      players[@turn % 2]
    end

    def winner_name
      players.find { |player| player.is_alive? } == players.last ? "Player 1" : "Player 2"
    end
end