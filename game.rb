require_relative './player'
require_relative './question'
class Game 


  def initialize(max_life = 3)
    @max_life = max_life
    @player1 = Player.new(1, @max_life)
    @player2 = Player.new(2, @max_life)
    @current_player = @player1
    @question = Question.new()
  end

  def switch_turn
    if @current_player == @player1 
      @current_player = @player2
    else 
      @current_player = @player1
    end
  end

  def game_over?
    if @current_player.life_left == 0
      self.switch_turn  
      puts "#{@current_player.get_player_id} wins with a score #{@current_player.life_left}/#{@max_life}"
      puts "------- GAME OVER --------- "
      puts "Good Bye"
      return true
    end
    false
  end

  def new_question
    puts "------- NEW TURN ---------"
      puts "#{@current_player.get_player_id}: #{@question.generate_question}"
      answer = gets.chomp
      if @question.is_answer_correct?(answer)
        puts "#{@current_player.get_player_id}: Yes! You are correct"
      else
        puts "#{@current_player.get_player_id}: Seriously?! NO"
        @current_player.lose_life
      end
  end

  def print_scores
    self.switch_turn
    puts "#{@player1.get_player_id}: #{@player1.life_left}/#{@max_life} VS #{@player2.get_player_id}: #{@player2.life_left}/#{@max_life}" 
  end

  
end




# class Player
  
#   def initialize(id, max_life)
#     @id = id
#     @life_left = max_life
#   end

#   def get_player_id
#     "Player #{id}"
#   end

#   def life_left
#     @life_left
#   end

#   def lose_life
#     @life_left -= life_left
#   end

# end

# class Question
#   def initialize
#     @num1 = rand(0..20)
#     @num2 = rand(0..20)
#     @answer = @num1 + @num2
#   end

#   def generate_question
#     puts "What is #{@num1} + #{@num2}?"
      
#   end

#   def is_answer_correct?(player_answer)
#     player_answer.to_i == @answer

     
#   end
# end
