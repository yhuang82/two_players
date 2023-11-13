class Question
  attr_reader :question, :correct_answer

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @correct_answer = @num1 + @num2
    @question = "What does #{@num1} plus #{@num2} equal?"
  end

  def check_answer(user_answer)
    user_answer.to_i == @correct_answer
  end

  def display_question
    @question
  end
end