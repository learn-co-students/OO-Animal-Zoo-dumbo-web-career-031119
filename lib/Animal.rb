require 'pry'

class Animal
  attr_reader :species, :nickname
  attr_accessor :weight, :zoo #:current_zoo

  ANIMALS = []

  def initialize(nickname, species, weight, zoo)
    @nickname = nickname
    @species = species
    @weight = weight
    @zoo = zoo #@current_zoo
    ANIMALS << self
  end

  def self.all
    ANIMALS
  end

  # def zoo
  #   self.current_zoo
  # end

  def self.find_by_species(species)
    self.all.select do |animal|
      animal.species == species
    end
  end

end
