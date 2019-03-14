class Animal
  attr_reader :species, :nickname
  attr_accessor :weight, :zoo

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

   def self.find_species_by(animal)
     ALLANIMALS.select do |ani|
       if ani == animal
       end
      end
   end
end
