class Alien
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def colonize_planet(planet)
    Colony.new(self, planet)
  end

  def colonies
    # Let's go ask the Colony model a question
    # what are the colonies that belong to me?
    Colony.all.select do |colony|
      colony.alien == self
    end
  end

  def planets
    # Add code here
    # this should return an Array of Planet Objects that this alien has colonies on
  end

end
