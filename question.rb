class Question

  def generate_question
    @num1 = rand(0..20)
    @num2 = rand(0..20)
    @answer = @num1 + @num2
    "What is #{@num1} + #{@num2}?"
  end

  def is_answer_correct?(player_answer)
    player_answer.to_i == @answer

     
  end
end
