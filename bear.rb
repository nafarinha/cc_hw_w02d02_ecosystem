class Bear

  attr_reader :name, :type, :stockpile

  def initialize(name, type)
    @name = name
    @type = type
    @stockpile = []
  end

  def catch_fish(fish)
    @stockpile << fish
  end

  def roar()
    return "grrrr"
  end

end
