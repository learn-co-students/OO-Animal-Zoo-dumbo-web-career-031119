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
    self.animals.map {|animal| animal.species}.uniq
    # arr = []
    # animals.select do |ani|
    #   if arr == []
    #     arr << ani.species
    #   else
    #     does_exist = false
    #     arr.each do |x|
    #       if x == ani.species
    #         does_exist = true
    #       end
    #     end
    #     if(!does_exist)
    #       arr << ani.species
    #     end
    #   end
    # end
    # arr
  end

  def find_by_species(species)
    animals.select do |ani|
      ani.species == species
    end
  end

  def animal_nicknames
    arr = []
    animals.select do |ani|
      arr << ani.nickname
    end
    arr
  end

  def self.find_by_location (location)
    ####### Uncomment to return array of Zoo *names*
    # arr = []
    #   ALLZOOS.each do |zoo|
    #     if zoo.location == location
    #       arr << zoo.name
    #     end
    #   end
    # arr
    ALLZOOS.select do |zoo|
      zoo.location == location
    end

  end


end
