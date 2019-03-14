class Animal
  attr_reader :species, :nickname, :zoo
  attr_accessor :weight

  ALLANIMALS = []

   def initialize(species, weight, nickname, zoo)
     @species = species
     @nickname = nickname
     @weight =  weight
     @zoo = zoo
     ALLANIMALS << self
   end

   def self.all
     ALLANIMALS
   end

   def self.find_by_species(animal)
     ALLANIMALS.select do |ani|
        ani.species == animal
      end
   end
end
