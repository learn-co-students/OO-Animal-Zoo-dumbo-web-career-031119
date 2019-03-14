require 'pry'
class Zoo

    @@all_zoos = []
    attr_reader :name, :location

    def initialize(name, location)
        @name = name
        @location = location
        @@all_zoos << self
    end

    def self.all_zoos
        #inside a class method self refers to the class
        @@all_zoos
    end

    def animals
        # inside an instance method, self refers to the instance that called the method
        Animal.all.select do |animal|
            self == animal.zoo
            #binding.pry
        end
    end

    def animal_species
        species_array = self.animals.map do |animal|
            animal.species
        end
        species_array.uniq
    end

    def animal_nicknames
        self.animals.map do |animal|
            animal.nickname
        end
    end

    def find_by_species(speciesArg)
        self.animals.select do |animal|
            animal.species == speciesArg
        end
    end

    def find_by_location(locationArg)
        @@all.select do |zoo|
            zoo.location == locationArg
        end
    end
end