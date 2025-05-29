

class players
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