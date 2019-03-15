require 'pry'
class Animal

   attr_reader :species, :nickname
   attr_accessor :weight, :zoo

   @@all = []

   def initialize(species, weight, nickname, zoo)
       @species = species
       @weight = weight
       @nickname = nickname
       @zoo = zoo
       @@all << self
   end

   def self.all
       @@all
   end

   def self.find_by_species(speciesArg)
     self.all.select {|animal| animal.species == speciesArg}
   end
end
