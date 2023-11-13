class Player
  attr_accessor :lives

  def initialize
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end

  def is_alive?
    @lives > 0
  end

  def display_score
    "#{@lives}/3"
  end
end