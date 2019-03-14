require 'pry'

class Zoo
  attr_reader :name, :location
#  attr_accessor :ZOOS

  ZOOS = []

  def initialize(name, location)
    @name = name
    @location = location
#    @animals = []
    ZOOS << self
  end

  def self.all
     ZOOS
  end

  def acquire_animal(nickname, species, weight)
    new_animal = Animal.new(nickname, species, weight, self)
    # @animals << new_animal
    # new_animal
  end

  def animals
    Animal.all.select do |animal|
      self == animal.zoo
    end
  end

  def animal_species
    species = self.animals.map do |animal|
      animal.species
    end
    species.uniq
  end

  def find_by_species(species)
    self.animals.select do |animal|
      animal.species == species
    end
  end

  def animal_nicknames
    self.animals.map do |animal|
      nickname = animal.nickname
    end
  end


  def self.find_by_location(location)
    self.all.select do |zoo|
      zoo.location == location
    end
  end

end
