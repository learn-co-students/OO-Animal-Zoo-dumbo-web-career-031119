class Animal
  attr_accessor :weight, :zoo
  # species and nickname can't be changed which is why we are setting it
  # as getters
  attr_reader :species, :nickname

  ANIMALS = []

  def initialize(species, weight, nickname, zoo)
    @species = species
    @weight = weight
    @nickname = nickname
    @zoo = zoo
    ANIMALS.push(self)
  end

  def self.all
    ANIMALS
  end

  # Since this is a class method, it would make most sense to access
  # all the animal instances to find every animal so we just use
  # the class constant ANIMALS to iterate.
  def self.find_by_species(species)
    new_arr = ANIMALS.select do |animal|
      animal.species == species.downcase
    end
    new_arr
  end

end
