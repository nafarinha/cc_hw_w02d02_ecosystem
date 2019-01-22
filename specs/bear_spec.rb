require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")
require_relative("../river")
require_relative("../fish")

class TestBear < MiniTest::Test

  def setup
    @bear_1 = Bear.new("Yogi", "Grizzly")
    @river = River.new("Adams")
    @fish_1 = Fish.new("sockeye salmon")
    @fish_2 = Fish.new("blueback salmon")
  end

  def test_bear_name
    assert_equal("Yogi", @bear_1.name())
  end

  def test_bear_type
    assert_equal("Grizzly", @bear_1.type())
  end

  def test_bear_stockpile
    assert_equal(Array, @bear_1.stockpile.class())
  end

  def test_catch_fish__add_to_bear
    fish_caught = @fish_2
    @river.add_fish(@fish_1)
    @river.add_fish(@fish_2)
    @bear_1.catch_fish(fish_caught)
    @river.surrender_fish(fish_caught)

    assert_equal(1, @bear_1.stockpile_count())
  end


  def test_catch_fish__remove_from_river
    fish_caught = @fish_2
    @river.add_fish(@fish_1)
    @river.add_fish(@fish_2)
    @bear_1.catch_fish(fish_caught)
    @river.surrender_fish(fish_caught)

    assert_equal(1, @river.shoal_count())
  end

  def test_bear_roar
    assert_equal("grrrr", @bear_1.roar())
  end

  def test_stockpile_count
    @bear_1.catch_fish(@fish_1)
    @bear_1.catch_fish(@fish_2)

    assert_equal(2, @bear_1.stockpile_count())
  end

end
