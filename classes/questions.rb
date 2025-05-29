

class Question
  attr_reader :number1, :number2, :answer

  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @answer = @number1 + @number2
  end

  def correct?(guess)
    guess.to_i == @answer
  end
end


=begin
q1 = Question.new
puts q1.number1, q1.number2, q1.answer
puts q1.correct?(q1.answer)
=end