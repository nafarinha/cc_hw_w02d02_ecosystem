class River
  attr_reader :name, :shoal

  def initialize(name)
    @name = name
    @shoal = []
  end

  def shoal_length()
    return @shoal.length()
  end

  def add_fish(new_fish)
    @shoal << new_fish
  end

  def surrender_fish(fish)
    @shoal.delete(fish)
  end

end
