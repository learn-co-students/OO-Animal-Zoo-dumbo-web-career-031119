class Animal

    attr_reader :species, :nickname
    attr_accessor :weight, :zoo

    @@all_animals = Array.new
    @@find_by_species = Array.new

        def initialize(species, weight, nickname)
            @weight = weight
            @species = species
            @nickname = nickname
            @@all_animals << self
        end

        def self.all
            @@all_animals
        end

        def self.find_by_species(species)
            @@find_by_species = @@all_animals.select do |x|
                x.species == species
            end
        end

        def zoo
            if !self.zoo
                self.zoo = nil
            else
                zoo = self.zoo.nickname
            end
        end

        

    
end
