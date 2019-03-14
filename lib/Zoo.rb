class Zoo

    attr_reader :name, :location
    
        @@zoos = []

    def initialize(name, location)
        @name = name
        @location = location
        @@zoos << self.location
    end


    def self.all
       @@zoos
       # inside a class method, self is the class (Animal)
    end


    def animals
        # inside an instance method, self is the instance who is calling that method 
        Animal.all.select do |animal| 
        self == animal.zoo
        end
    end

    def animal_species
        self.animals.map{|animal| animal.species}.uniq
    end

    def find_by_species(arg)
        self.animals.select do |animal|
            animal.species == arg
        end
    end 

    def animal_nicknames
        animals.map {|animal| animal.nickname}

    end

    def self.find_by_location(locationArg)
        @@all.select do |zoo|
            zoo.location == locationArg
        end
    end

end
