class Zoo
  attr_reader :location, :name

  ALLZOOS = []
  def initialize(location, name)
    @location = location
    @name = name
    ALLZOOS << self
  end

  def self.all
    ALLZOOS
  end

  def animals
    Animal.all.select do |ani|
      ani.zoo == self
    end
  end

  def add_animal(species, weight, nickname)
    Animal.new(species, weight, nickname, self)
  end

  def animal_species
    arr = []
    animals.select do |ani|
      if arr == []
        arr << ani
      else
        does_exist = false
        arr.each do |x|
          if x.species == ani.species
            does_exist = true
          end
        end
        if(!does_exist)
          arr << ani
        end
      end
    end


  end

  def find_by_species(species)
    animals.select do |ani|
      ani.species == ani
    end
  end
end
