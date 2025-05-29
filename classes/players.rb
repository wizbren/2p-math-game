

class Player
  attr_reader :name, :lives  # Getter for player name & lives

  def initialize(name)
    @name = name
    @lives = 3               # Default 3 lives
  end

  def lose_life              
    @lives -= 1  
  end

  def still_alive?
    @lives > 0
  end
end

=begin
p1 = Player.new("Brendan")
puts p1.name, p1.lives
puts p1.still_alive?

p2 = Player.new("Ryan")
puts p2.name, p2.lives
3.times {p2.lose_life}
puts p2.still_alive?
=end