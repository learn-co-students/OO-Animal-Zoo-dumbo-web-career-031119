require 'pry'
class Animal

    @@all = []
    attr_reader :species, :nickname
    attr_accessor :weight, :zoo

    def initialize(species, weight, nickname, zoo)
        @weight = weight
        @species = species
        @nickname = nickname
        @zoo = zoo
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_species(speciesArg)
        self.all.select do |animal|
            animal.species == speciesArg
        end
    end

end