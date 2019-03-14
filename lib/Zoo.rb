class Zoo
  attr_reader :nickname, :species, :animal, :zoo, :location
  # attr_accessor :weight, :zoo
  @@zoo = []

  def initialize(name,location)
    @location = location
    @name = name
    @@zoo << self
  end

  def loc_animal
    Animal.all_unique_animals.select{|ani| ani.location == self.location}
  end

  def animal_species
    unique_species = []
    loc_animal.all_unique_animals.each do |ani|
        if !(unique_species.include?(ani.species))
            unique_species << ani.species
        end
    end
    return unique_species
  end

  def new_animal(species,weight,name)
    Animal.new(species,weight,name, self)
  end

#   
# Zoo#animal_nicknames should return an array of all the nicknames of animals that a specific instance of a zoo has.
# Zoo.find_by_locationshould take in a location as an argument and return an array of all the zoos within that location.

  def animal_nicknames 
    loc_animal.all_unique_animals.map{|anim| anim.nickname}
  end

  def self.find_by_location(term)
    @@zoo.select{|the_zoo| the_zoo.location == term}
  end
end