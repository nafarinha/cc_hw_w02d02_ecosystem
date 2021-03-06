require("minitest/autorun")
require("minitest/rg")
require_relative("../river")
require_relative("../fish")
require_relative("../bear")

class TestRiver < MiniTest::Test

  def setup

    @fish_1 = Fish.new("pink salmon")
    @fish_2 = Fish.new("atlantic salmon")
    @river = River.new("Amazon")
    @bear_1 = Bear.new("Yogi", "Grizzly")
  end

  def test_get_river_name
    assert_equal("Amazon", @river.name())
  end

  def test_can_create_shoal
    assert_equal(Array, @river.shoal.class())
  end

  def test_shoal_count
    @river.add_fish(@fish_1)
    @river.add_fish(@fish_1)
    @river.add_fish(@fish_2)

    assert_equal(3, @river.shoal_count())
  end

  def test_add_fish
    @river.add_fish(@fish_1)
    assert_equal(1, @river.shoal_count())
  end

  def test_add_multiple_fishes
    @river.add_fish(@fish_1)
    @river.add_fish(@fish_2)
    assert_equal(2, @river.shoal_count())
  end

  def test_surrender_fish
    @river.add_fish(@fish_1)
    @river.add_fish(@fish_2)
    @bear_1.catch_fish(@fish_2)
    @river.surrender_fish(@fish_2)
    assert_equal(1, @river.shoal_count())
  end

end
