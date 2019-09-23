class Zoo

    attr_accessor :name, :location
    attr_reader :find_by_species

    @@all = Array.new
    @@find_by_location

    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end

    def self.all
        @@all
    end

    def animals
        return Animal.all.select {|x| x.zoo == self}
    end

    def animal_species
        return animals.collect {|x| x.species}.uniq()
    end

    def find_by_species(species)
        return animals.select {|x| x.species == species}
    end

    def animal_nicknames
        return animals.collect {|x| x.nickname}
    end

    def self.find_by_location(location)
        @@find_by_location = self.all.select {|x| x.location == location}
    end
end
