require 'pry'

class Animal

    attr_reader :species, :nickname
    attr_accessor :weight, :zoo
    

    @@animals = []
    
    def initialize(species, weight, nickname, zoo)
        @species = species
        @weight = weight
        @nickname = nickname
        @zoo = zoo
        @@animals << self
     
    end


    def self.all
        @@animals
        
    end

    def self.find_by_species(species)
        self.all.select do |animal|
        animal.species == species
        end
    end
end
