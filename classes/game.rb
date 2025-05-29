require_relative 'players'
require_relative 'questions'


class Game
  
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = [@player1, @player2].sample
  end

  def remaining_lives
    puts "Remaining lives => #{@player1.name} has #{@player1.lives} lives, #{@player2.name} has #{@player2.lives} lives."
  end

  def next_turn
    @current_player = (@current_player == @player1) ? @player2 : @player1
  end

  def start
    puts "Ready... Set... MATH!"
    while @player1.still_alive? && @player2.still_alive?
      question = Question.new
      puts "#{current_player.name}'s turn. What is #{question.number1} + #{question.number2}?"
      guess = gets.chomp

      if question.correct?(guess)
        puts "Nice! You got it."
      else
        puts "Uh oh, that wasn't the answer."
        @current_player.lose_life
      end

