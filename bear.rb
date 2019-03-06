class Bear

  attr_accessor :name, :type, :stomach, :total_fish_eaten

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
    @total_fish_eaten = 0
  end

  def take_fish_from_river(fish)
    @stomach << fish
    @total_fish_eaten += 1
  end

  def talk
    return "ROAR!"
  end
end
