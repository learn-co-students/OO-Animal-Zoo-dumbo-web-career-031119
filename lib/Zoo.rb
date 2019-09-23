class Zoo

    attr_accessor :name, :location, :animals
    @@all_zoos = Array.new
    
    def initialize(name, location)
        @name = name
        @location = location
        @@all_zoos << self
    end

    def self.all
        @@all_zoos                #@@ class instance
    end

    def animals
        self.select do |species|
            binding.pry
        end
    end

    def find_by_species(species)
        self.species.select do |x|
            x.include?(species)
        end
    end

    def animal_species
        
    end

    #binding.pry
end
