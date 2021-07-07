class Animal


attr_accessor :weight, :zoo
attr_reader :species, :nickname

ANIMALS = []



def initialize(species,weight,nickname,zoo)
  @species = species
  @weight = weight
  @nickname = nickname
  @zoo = zoo
  ANIMALS.push(self)

end


def self.all
  ANIMALS
end

# def zoo
#   @zoo #samething as self.zoo
# end

def self.find_by_species(species)
  new_arr = ANIMALS.select do |animal|
    animal.species == species.downcase
  end
  new_arr
end



end
