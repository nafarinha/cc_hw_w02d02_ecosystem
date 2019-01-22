require("minitest/autorun")
require("minitest/rg")
require_relative("../fish")


class TestFish < MiniTest::Test

  def setup
    @fish_1 = Fish.new("salmon")

  end

  def test_get_fish_name
    assert_equal("salmon", @fish_1.name())
  end


end
