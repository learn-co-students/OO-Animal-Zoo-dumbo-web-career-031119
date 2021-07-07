


class Zoo

    attr_accessor :name, :location, :animals

    ZOO = []

    def initialize(name, location)
      @name = name
      @location = location
      ZOO.push(self)
    end

    def self.all
      ZOO
    end

    def animals
      new_arr = Animal.all.select do |animal|
        self == animal.zoo

      end
      new_arr
    end

    def animal_species
      new_arr = self.animals.map do |instance|
        instance.species
      end
      new_arr.uniq
    end

    def find_by_species(species)
      new_arr = self.animals.select do |animal|
        animal.species == species.downcase
      end
    end

    def animal_nicknames
      new_arr = self.animals.map do |animal|
        animal.nickname
      end
      new_arr
    end

    def self.find_by_location(location)
      new_arr = ZOO.select do |zoo|
        zoo.location == location
      end
    end

  end
