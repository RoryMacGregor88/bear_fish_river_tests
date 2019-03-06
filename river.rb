class River

  attr_accessor :name, :fish

  def initialize(name, fish)
    @name = name
    @fish = fish
  end

  def bear_takes_fish_from_river(fish)
    @fish.delete(fish)
  end

end
