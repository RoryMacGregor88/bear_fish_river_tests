require('minitest/autorun')
require('minitest/rg')
require_relative('../fish.rb')
require_relative('../bear.rb')
require_relative('../river.rb')

class RiverTest < MiniTest::Test

  def setup()
    @bear = Bear.new("Yogi", "Grizzly")
    @fish1 = Fish.new("Billy Bass")
    @fish2 = Fish.new("Tommy Trout")
    @fish3 = Fish.new("Sammy Sardine")
    @river = River.new("Amazon", [@fish1, @fish2, @fish3])
  end

  def test_bear_takes_fish_from_river
    assert_equal(3, @river.fish.length)
    assert_equal(0, @bear.stomach.length)
    @bear.take_fish_from_river(@fish2)
    @river.bear_takes_fish_from_river(@fish2)
    assert_equal(2, @river.fish.length)
    assert_equal(1, @bear.stomach.length)
  end

  def test_fish_count
    assert_equal(3, @river.fish.length)
  end


  def test_bear_name_and_type
    assert_equal("Yogi", @bear.name)
    assert_equal("Grizzly", @bear.type)
  end

  def test_can_bear_take_fish_from_river
    @bear.take_fish_from_river(@fish1)
    assert_equal(1, @bear.stomach.length)
  end

  def test_bear_food_count_and_total_fish
    assert_equal(0, @bear.stomach.length)
    @bear.take_fish_from_river(@fish1)
    assert_equal(1, @bear.stomach.length)
    assert_equal(1, @bear.total_fish_eaten)
  end

  def test_bear_roar
    assert_equal("ROAR!", @bear.talk)
  end
  def test_bear_name_and_type
    assert_equal("Yogi", @bear.name)
    assert_equal("Grizzly", @bear.type)
  end

  def test_can_bear_take_fish_from_river
    @bear.take_fish_from_river(@fish1)
    assert_equal(1, @bear.stomach.length)
  end

  def test_bear_food_count_and_total_fish
    assert_equal(0, @bear.stomach.length)
    @bear.take_fish_from_river(@fish1)
    assert_equal(1, @bear.stomach.length)
    assert_equal(1, @bear.total_fish_eaten)
  end

  def test_bear_roar
    assert_equal("ROAR!", @bear.talk)
  end

end
