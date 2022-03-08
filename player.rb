class Player
  
  def initialize(id, max_life)
    @id = id
    @life_left = max_life.to_i
  end

  def get_player_id
    "Player #{@id}"
  end

  def life_left
    @life_left
  end

  def lose_life
    @life_left -= 1
  end

end
