class UserInterface
  def self.get_user_input
    gets.chomp
  end

  def self.display_message(message)
    puts message
  end
end