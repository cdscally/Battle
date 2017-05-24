class Player
  attr_reader :name, :hp

  DEFAULT_HIT_POINTS = 20

  def initialize(name, hp=DEFAULT_HIT_POINTS)
    @name = name
    @hp = hp
  end

  def receive_damage
    @hp -= 10
  end

  def attack(opponent)
    opponent.receive_damage
  end

end
