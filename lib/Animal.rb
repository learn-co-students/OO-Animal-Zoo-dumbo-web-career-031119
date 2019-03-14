class Animal

    @@all = Array.new
    @@find_by_species = Array.new

    attr_reader :species, :nickname, :find_by_species
    attr_accessor :weight, :zoo

    def initialize(species, weight, nickname)
        @species = species
        @weight = weight
        @nickname = nickname
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_species(species)
        @@find_by_species = @@all.select {|x|
            x.species == species
        }
    end

end

