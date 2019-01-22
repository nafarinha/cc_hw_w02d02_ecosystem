require("minitest/autorun")
require("minitest/rg")
require_relative("../river")

class TestRiver < MiniTest::Test

  def setup
    @river = River.new("Amazon")
  end

  def test_get_river_name
    assert_equal("Amazon", @river.name())
  end


end
