class Fish

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def river_loses_fish__bear_eats_fish(fish)
    @bear.take_fish_from_river(fish)
    @river.bear_takes_fish_from_river(fish)
  end


end
