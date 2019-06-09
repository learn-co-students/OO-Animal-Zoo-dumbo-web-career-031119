require 'pry'

class Zoo

  attr_accessor :name
  attr_reader :location
  @@all = []

  def initialize(name, location)
    @name = name
    @location = location
    @@all << self

  end

  def self.all
    @@all
    # Inside a class method, self is the class (Animal)
  end

  def zoo_animals
    Animal.all.select do |animal|
      self == animal.zoo_home
    end
  end

  def animal_species
    animal_array = self.animals.map {|animal| animals.species}
      animal_array.uniq
  end

# Animal.find_by_species should take in an animal's
# species as an argument and return an array of all
# the animals, which are of that species.


def animal_nicknames
  zoo_animals.map {|animal| animal.nickname}
end

def self.find_by_location(locationArg)
  @@all.select do |zoo|
    zoo.location == locationArg
  end
end

def find_by_species(speciesArg)
  self.animals.select do |animal|
    animal.species == speciesArg
  end
end
      # Search specific zoo for species, not all zoos
      # Inside an instance method, self is the instance
      # who is calling that mathod (ie my_zoo)
  end
