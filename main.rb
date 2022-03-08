require_relative './game'

puts "Play with how many lives?"
max_lives = gets.chomp



def game_loop(max_lives)
  game = Game.new(max_lives)
  loop do
    # ask a new question
    game.new_question
    
    # game_over?
    if game.game_over?
      break;
    end

    # print the scores
    game.print_scores
  end
end

game_loop(max_lives)