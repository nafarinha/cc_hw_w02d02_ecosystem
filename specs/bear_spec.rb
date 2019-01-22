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

  def test_catch_fish
    @river.add_fish(@fish_1)
    @river.add_fish(@fish_2)
    @bear_1.catch_fish(@fish_2)

    assert_equal(1, @river.shoal_length())

  end
end
